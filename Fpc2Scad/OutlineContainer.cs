// <copyright file="OutlineContainer.cs" company="Francesco Iovine">
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
    /// In FreePCB, an outline is composed by several non contiguous parts.
    /// </summary>
    public class OutlineContainer : IOscadWriter
    {
        /// <summary>
        /// Static container of the list of outlines that compose the full PCB outline.
        /// </summary>
        private List<Outline> outlines = new List<Outline>();

        /// <summary>
        /// Initializes a new instance of the <see cref="OutlineContainer" /> class from the statement container already loaded.
        /// </summary>
        /// <param name="fpcStatementContainer">FreePCB statement container to be used to compile the outlines.</param>
        public OutlineContainer(FpcStatementContainer fpcStatementContainer)
        {
            FpcRange boardRange = fpcStatementContainer.GetSection("board");
            foreach (var outlineRange in boardRange.Children("outline"))
            {
                int pointsCount = outlineRange.GetFirstStatement().GetParamAsInt(1);
                Outline outline = new Outline();
                Point firstPointOfOutline = null;
                Point lastPointOfOutline = null;
                int lastTipo = 0;
                foreach (var cornerRange in outlineRange.Children("corner"))
                {
                    FpcStatement corner = cornerRange.GetFirstStatement();
                    int pointIndex = corner.GetParamAsInt(1);
                    double px = corner.GetParamAsDouble(2);
                    double py = corner.GetParamAsDouble(3);
                    int tipo = corner.GetParamAsInt(4);
                    Point pt = new Point(px, py);
                    if (pointIndex == 1)
                    {
                        firstPointOfOutline = pt;
                    }
                    else
                    {
                        outline.Add(OutlineElement.GetOutlineElement(lastTipo, lastPointOfOutline, pt));
                        if (pointIndex == pointsCount)
                        {
                            outline.Add(OutlineElement.GetOutlineElement(tipo, pt, firstPointOfOutline));
                        }
                    }

                    lastPointOfOutline = pt;
                    lastTipo = tipo;
                }

                this.outlines.Add(outline);
            }
        }

        /// <summary>
        /// Outputs the OpenScad source code of the contained outlines
        /// </summary>
        /// <param name="sb">StringBuilder to be used to create the OpenScad source code.</param>
        public void Generate(StringBuilder sb)
        {
            sb.Append("module Outline() {\n");
            foreach (var o in this.outlines)
            {
                o.Generate(sb);
            }

            sb.Append("}\n");
        }
    }
}
