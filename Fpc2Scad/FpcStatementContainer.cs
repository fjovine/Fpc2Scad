// <copyright file="FpcStatementContainer.cs" company="Francesco Iovine">
//  Fpc2scad reads FreePCB files (http://www.freepcb.com) and converts into a 3D version in
//  the OpenScad language (http://www.openscad.org)
//  Copyright © Francesco Iovine 2015
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see http://www.gnu.org/licenses/.
// </copyright>
namespace Fpc2Scad
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// The statements loaded from file are simply stored sequentially.
    /// On top of it, a tree index keeps track of their hierarchical structure.
    /// This way, writing the structure back to file is straightforward
    /// </summary>
    public class FpcStatementContainer
    {
        /// <summary>
        /// Contains the list of statements in the order found on file.
        /// </summary>
        private List<FpcStatement> statementList = new List<FpcStatement>();

        /// <summary>
        /// This list of integers contains the indexes in the statementList containing the first statement of a new section. 
        /// </summary>
        private Dictionary<string, FpcRange> sections = new Dictionary<string, FpcRange>();

        /// <summary>
        /// Initializes a new instance of the <see cref="FpcStatementContainer" /> class loading the statements from file.
        /// </summary>
        /// <param name="fpcFilename">Filename containing the PCB description. No verification is done on the presence of a proper file extension.</param>
        public FpcStatementContainer(string fpcFilename)
        {
            int lineCounter = 0;

            // Load fpc from file
            using (TextReader tr = new StreamReader(fpcFilename))
            {
                while (true)
                {
                    string line = tr.ReadLine();
                    lineCounter++;
                    //// Console.WriteLine("Line {0}", lineCounter);
                    if (line == null)
                    {
                        break;
                    }

                    if (line.Length < 1)
                    {
                        continue;
                    }

                    if (line[0] == '[')
                    {
                        string name = line.Substring(1, line.IndexOf(']', 1) - 1);
                        this.Add(new FpcStatement(name, this.statementList.Count));
                        continue;
                    }

                    int indentCount = GetCountOfTrailingWhitespaces(line);
                    line = line.Trim();

                    int indexOfSemicolumn = line.IndexOf(':');
                    string identifier = line.Substring(0, indexOfSemicolumn);
                    string rest = line.Substring(indexOfSemicolumn + 1).Trim();
                    int startRest = 0;
                    List<string> parameters = new List<string>();
                    if (rest[0] == '\"')
                    {
                        startRest = IndexOfNextDelimiterIgnoringEscape(rest, '"', 1);
                        if (startRest == -1)
                        {
                            // There is only one parameter
                            startRest = rest.Length;
                        }

                        parameters.Add(rest.Substring(1, startRest - 2));
                    }
                    else
                    {
                        startRest = rest.IndexOf(' ');
                        if (startRest == -1)
                        {
                            // There is only one parameter
                            startRest = rest.Length;
                        }

                        parameters.Add(rest.Substring(0, startRest));
                    }

                    if (startRest < rest.Length)
                    {
                        string[] otherParams = rest.Substring(startRest + 1).Split(' ');
                        parameters.AddRange(otherParams);
                    }

                    this.Add(new FpcStatement(identifier, parameters, indentCount, this.statementList.Count));
                }
            }

            // Build the section index
            for (int i = 0; i < this.StatementCount; i++)
            {
                FpcStatement fpcStatement = this.GetStatement(i);
                if (!fpcStatement.IsSection)
                {
                    continue;
                }

                FpcRange sectionRange = new FpcRange(this, i);
                this.sections.Add(sectionRange.Name, sectionRange);
                i = sectionRange.LastIndex;
            }
        }

        /// <summary>
        /// Gets the number of statements composing the FPC file.
        /// </summary>
        public int StatementCount
        {
            get
            {
                return this.statementList.Count;
            }
        }

        /// <summary>
        /// Counts the number of trailing whitespaces in the passed string. A tab is transformed in 4 spaces by default
        /// </summary>
        /// <param name="s">String whose trailing whitespaces must be counted.</param>
        /// <param name="tabSize">Number of whitespaces the tab characters is substituted into.</param>
        /// <returns>The count of trailing whitespaces of the passed string.</returns>
        public static int GetCountOfTrailingWhitespaces(string s, int tabSize = 4)
        {
            int result = 0;
            foreach (char c in s)
            {
                if (!char.IsWhiteSpace(c))
                {
                    break;
                }

                result += (c == '\t') ? tabSize : 1;
            }

            return result;
        }

        /// <summary>
        /// Returns the index of the passed delimiter in the passed string, starting from index from.
        /// </summary>
        /// <param name="s">The string to be searched into.</param>
        /// <param name="delimiter">Delimiter to be found.</param>
        /// <param name="from">Starting index of the research.</param>
        /// <returns>Index of the first occurrence of the delimiter in the string starting from index from. -1 if no delimiter is found.</returns>
        public static int IndexOfNextDelimiterIgnoringEscape(string s, char delimiter, int from)
        {
            bool skip = false;
            int result = from;
            while (result < s.Length)
            {
                char c = s[result++];
                if (skip)
                {
                    skip = false;
                    continue;
                }

                if (c == '\\')
                {
                    skip = true;
                }

                if (c == delimiter)
                {
                    break;
                }
            }

            if (result == s.Length)
            {
                result = -1;
            }

            return result;
        }

        /// <summary>
        /// Visits each statement contained in the list using the passed visitor action
        /// </summary>
        /// <param name="action">Action delegate to be applied to each statement of the list.</param>
        public void ForEach(Action<FpcStatement> action)
        {
            foreach (var statement in this.statementList)
            {
                action(statement);
            }
        }

        /// <summary>
        /// Adds new statement at the end of the list.
        /// </summary>
        /// <param name="statement">Statement to be added.</param>
        public void Add(FpcStatement statement)
        {
            this.statementList.Add(statement);
        }

        /// <summary>
        /// Getter of an FpcStatement from the statement list based on its index.
        /// </summary>
        /// <param name="index">Index of the element to be retrieved.</param>
        /// <returns>index-th statement in the statement list.</returns>
        public FpcStatement GetStatement(int index)
        {
            return this.statementList[index];
        }

        /// <summary>
        /// Gets a named section in the current range.
        /// </summary>
        /// <param name="name">Name of the section.</param>
        /// <returns>Returns the named section.</returns>
        public FpcRange GetSection(string name)
        {
            return this.sections[name];
        }

        /// <summary>
        /// Splits the line in the parameters it contains.
        /// The line must not be a section declaration.
        /// </summary>
        /// <param name="line">Line containing a statement read from the .fpc file</param>
        /// <returns>A list containing all the parsed parameters.</returns>
        private static List<string> SplitLine(string line)
        {
            int endFirst = 0;
            List<string> result = new List<string>();
            string[] elems = line.Trim().Split(':');
            result.Add(elems[0]);
            if (elems.Length > 1)
            {
                string after = elems[1];
                if (after[0] == '"')
                {
                    endFirst = after.IndexOf('"');
                    result.Add(after.Substring(1, endFirst));
                }

                string[] other = after.Substring(endFirst + 1).Split(' ');
                result.AddRange(other);
            }

            return result;
        }
    }
}
