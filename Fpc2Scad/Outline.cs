// <copyright file="Outline.cs" company="Francesco Iovine">
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
    using System.Diagnostics;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Descriptor of an outline. The complete outline of the PCB is composed by a list of outlines.
    /// </summary>
    public class Outline : IOscadWriter
    {
        /// <summary>
        /// The thickness of the PCB in millimeters.
        /// </summary>
        public const double PCBTHICKNESS = 1.6;

        /// <summary>
        /// List of Outline elements that compose a closed outline part
        /// </summary>
        private List<OutlineElement> elements = new List<OutlineElement>();

        /// <summary>
        /// Add the passed outline element to the list of elements composing the Outline.
        /// </summary>
        /// <param name="e">OutlineElement to be added.</param>
        public void Add(OutlineElement e)
        {
            this.elements.Add(e);
        }

        /// <summary>
        /// Builds the openscad code that creates the PCB outline
        /// </summary>
        /// <param name="sb">String builder to attach the generated OpenScad code.</param>
        public void Generate(StringBuilder sb)
        {
            sb.Append("  linear_extrude(height=");
            sb.Append(PCBTHICKNESS);
            sb.Append(") {\n");
            this.GeneratePolygon(sb, 4);
            sb.Append("  }\n");
        }

        /// <summary>
        /// Generates Open Scad code for the polygon that approximates the OutlineElement.
        /// </summary>
        /// <param name="sb">String builder to which append the generated Open Scad code.</param>
        /// <param name="leadingSpaces">Count of leading spaces to add in front of each line. Used for human readability.</param>
        public void GeneratePolygon(StringBuilder sb, int leadingSpaces)
        {
            string leading = new string(' ', leadingSpaces);
            sb.Append(leading);
            sb.Append("polygon([\n");
            Point lastPoint = null;
            foreach (var el in this.elements)
            {
                sb.Append(leading);
                sb.Append("  ");
                foreach (var pt in el.GetPoints())
                {
                    if (lastPoint != null && lastPoint == pt)
                    {
                        continue;
                    }

                    sb.Append(pt);
                    sb.Append(",");
                    lastPoint = pt;
                }

                sb.Append('\n');
            }

            sb.Append(leading);
            sb.Append("]);\n");
        }
    }
}
