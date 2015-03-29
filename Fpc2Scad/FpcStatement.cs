// <copyright file="FpcStatement.cs" company="Francesco Iovine">
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
    /// This class describes a statement in the Fpc statement list.
    /// The Fpc file structure is composed by several one line statements composed by indentation and additional information
    /// </summary>
    public class FpcStatement
    {
        /// <summary>
        /// List of parameters found inside the statement. The parameters are kept as strings and transformed into the corresponding type when needed.
        /// </summary>
        private List<string> parameters;

        /// <summary>
        /// Initializes a new instance of the <see cref="FpcStatement" /> class, section statement.
        /// </summary>
        /// <param name="name">Name of the section.</param>
        /// <param name="index">Index of the starting segment.</param>
        /// <param name="isSection">Value indicating whether the statement is a section.</param>
        public FpcStatement(string name, int index, bool isSection = true)
        {
            this.Index = index;
            this.IsSection = isSection;
            this.Name = name;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="FpcStatement" /> class, a normal fpc statement.
        /// </summary>
        /// <param name="name">Name of the statement, i.e. first blank delimited token</param>
        /// <param name="parameters">Enumeration of the parameters. Only the first parameter can contain blanks</param>
        /// <param name="indentCount">Number of trailing whitespaces contained in the statement</param>
        /// <param name="index">Index of the first statement of the range.</param>
        public FpcStatement(string name, List<string> parameters, int indentCount, int index)
            : this(name, index, false)
        {
            this.parameters = parameters;
            this.Parameters = parameters;
            this.Indent = indentCount;
        }

        /// <summary>
        /// Gets the index of the first statement of the range.
        /// </summary>
        public int Index
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the count of trailing blanks composing the statement.
        /// The hierarchy structures is driven by indentation
        /// </summary>
        public int Indent
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets a value indicating whether the statement is a section delimiter, i.e. has the format [{section_name}].
        /// </summary>
        public bool IsSection
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the name of the statement.
        /// If it is a section, this is the name of the section
        /// Otherwise it is the first field of the statement
        /// </summary>
        public string Name
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the enumeration of the parameters composing the statement
        /// </summary>
        public IEnumerable<string> Parameters
        {
            get;
            private set;
        }

        /// <summary>
        /// Builds a human readable description of the statement.
        /// If the statement is a section, the string is composed by "Section " followed by the section name
        /// If it is a normal statement, it starts with the indented name followed by the list of parameters in parentheses
        /// </summary>
        /// <returns>Returns a human readable description of the statement.</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            if (this.IsSection)
            {
                sb.Append("Section ");
                sb.Append(this.Name);
            }
            else
            {
                sb.Append(' ', this.Indent);
                sb.Append(this.Name);
                sb.Append('(');
                bool isFirst = true;
                foreach (var p in this.Parameters)
                {
                    if (!isFirst)
                    {
                        sb.Append(", ");
                    }

                    isFirst = false;
                    sb.Append(p);
                }

                sb.Append(')');
            }

            return sb.ToString();
        }

        /// <summary>
        /// Gets the parameterIndex parameter as a distance, using the unit conversion factor determined by its suffix.
        /// </summary>
        /// <param name="parameterIndex">Index of the required parameter.</param>
        /// <returns>Returns the parameterIndex parameter as a distance, using the unit conversion factor determined by its suffix.</returns>
        public double GetParamAsDistance(int parameterIndex)
        {
            string param = this.GetParam(parameterIndex);
            foreach (string unit in Util.ConversionFactor.Keys) 
            {
                if (param.EndsWith(unit))
                {
                    return double.Parse(param.Substring(0, param.Length - unit.Length)) * Util.ConversionFactor[unit];
                }
            }

            return double.Parse(param); 
        }

        /// <summary>
        /// Gets the parameterIndex parameter as a double floating point number.
        /// </summary>
        /// <param name="parameterIndex">Index of the required parameter.</param>
        /// <returns>Returns the parameterIndex parameter as a double floating point number.</returns>
        public double GetParamAsDouble(int parameterIndex)
        {
            return double.Parse(this.GetParam(parameterIndex));
        }

        /// <summary>
        /// Gets the parameterIndex parameter as an integer.
        /// </summary>
        /// <param name="parameterIndex">Index of the required parameter.</param>
        /// <returns>Returns the parameterIndex parameter as an integer.</returns>
        public int GetParamAsInt(int parameterIndex)
        {
            return int.Parse(this.GetParam(parameterIndex));
        }

        /// <summary>
        /// Gets the parameterIndex parameter as a string.
        /// </summary>
        /// <param name="parameterIndex">Index of the required parameter.</param>
        /// <returns>Returns the parameterIndex parameter as a string.</returns>
        public string GetParam(int parameterIndex)
        {
            return this.parameters[parameterIndex - 1];
        }
    }
}
