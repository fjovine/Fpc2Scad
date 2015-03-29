// <copyright file="FpcRange.cs" company="Francesco Iovine">
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
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// This class describes an FPC range, i.e. a range of lines (statements) in the FPC file having indentation level >= of a specified value.
    /// A range logically is associated to a subtree.
    /// </summary>
    public class FpcRange
    {
        /// <summary>
        /// Index of the first statement of the range.
        /// </summary>
        private int firstIndex;

        /// <summary>
        /// Indent level of the children of the current subtree.
        /// </summary>
        private int indentChildren;

        /// <summary>
        /// Local copy of the statement container of all the statements in the FPC file.
        /// </summary>
        private FpcStatementContainer fpcStatementContainer;

        /// <summary>
        /// Initializes a new instance of the <see cref="FpcRange" /> class from the statement container, starting from the passed statement index and 
        /// ignoring the commands passed.
        /// </summary>
        /// <param name="fpcStatementContainer">Statement container to be used.</param>
        /// <param name="firstIndex">Index of the first statement belonging to this range.</param>
        /// <param name="ignore">List of statements that must be ignored during the subtree selection</param>
        public FpcRange(FpcStatementContainer fpcStatementContainer, int firstIndex, params string[] ignore)
        {
            this.firstIndex = firstIndex;
            this.fpcStatementContainer = fpcStatementContainer;
            FpcStatement firstStatement = fpcStatementContainer.GetStatement(firstIndex);
            this.Name = firstStatement.Name;
            if (firstStatement.IsSection)
            {
                // presets LastIndex to be the last statement in list for safety
                this.LastIndex = fpcStatementContainer.StatementCount;
                for (int i = firstIndex + 1; i < fpcStatementContainer.StatementCount; i++)
                {
                    if (fpcStatementContainer.GetStatement(i).IsSection)
                    {
                        this.LastIndex = i - 1;
                        break;
                    }
                }

                this.indentChildren = 0;
            }
            else
            {
                int index = ++firstIndex;
                FpcStatement statement;

                while (true)
                {
                    statement = fpcStatementContainer.GetStatement(index++);
                    if (Array.IndexOf(ignore, statement.Name) < 0)
                    {
                        break;
                    }
                }

                this.indentChildren = statement.Indent;
                if (this.indentChildren == firstStatement.Indent)
                {
                    // There are no subtrees
                    this.LastIndex = firstIndex;
                }
                else
                {
                    while (index < fpcStatementContainer.StatementCount)
                    {
                        if (fpcStatementContainer.GetStatement(index).Indent < this.indentChildren)
                        {
                            break;
                        }

                        index++;
                    }

                    this.LastIndex = index - 1;
                }
            }
        }
        
        /// <summary>
        /// Gets the name of the range.
        /// </summary>
        public string Name
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the last index of the range.
        /// </summary>
        public int LastIndex
        {
            get;
            private set;
        }

        /// <summary>
        /// Computes all the children contained in the range returning an enumeration of them, which are recursively other ranges.
        /// </summary>
        /// <param name="name">Name of the range.</param>
        /// <param name="ignore">Commands to ignore.</param>
        /// <returns>Returns an enumeration of child ranges of this.</returns>
        public IEnumerable<FpcRange> Children(string name = null, params string[] ignore)
        {
            List<FpcRange> result = new List<FpcRange>();
            for (int i = this.firstIndex + 1; i <= this.LastIndex; i++) 
            {
                FpcStatement fpcStatement = this.fpcStatementContainer.GetStatement(i);
                if (fpcStatement.Indent == this.indentChildren)
                {
                    if (name == null || fpcStatement.Name == name)
                    {
                        FpcRange fpcRange = new FpcRange(this.fpcStatementContainer, i, ignore);
                        result.Add(fpcRange);
                    }
                }
            }

            return result.AsEnumerable<FpcRange>();
        }

        /// <summary>
        /// Computes the first child of the range having the passed name.
        /// </summary>
        /// <param name="name">Name of the range to be looked for.</param>
        /// <param name="ignore">Commands to be ignored.</param>
        /// <returns>Returns the first child of the range having the passed name.</returns>
        public FpcRange FirstChild(string name, params string[] ignore)
        {
            FpcRange result = null;
            for (int i = this.firstIndex + 1; i <= this.LastIndex; i++)
            {
                FpcStatement fpcStatement = this.fpcStatementContainer.GetStatement(i);
                if (fpcStatement.Indent == this.indentChildren)
                {
                    if (fpcStatement.Name == name)
                    {
                        FpcRange fpcRange = new FpcRange(this.fpcStatementContainer, i, ignore);
                        result = fpcRange;
                        break;
                    }
                }
            }

            return result;
        }

        /// <summary>
        /// Computes the first statement of this range.
        /// </summary>
        /// <returns>Returns the first statement of this range.</returns>
        public FpcStatement GetFirstStatement()
        {
            return this.fpcStatementContainer.GetStatement(this.firstIndex);
        }
    }
}
