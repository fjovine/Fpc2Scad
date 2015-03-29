// <copyright file="FootprintContainer.cs" company="Francesco Iovine">
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
    /// This class is the container for all the footprints defined inside an FPC file.
    /// </summary>
    public class FootprintContainer : IOscadWriter
    {
        /// <summary>
        /// This property maps the footprint name with its description
        /// </summary>
        private Dictionary<string, Footprint> footprintIndex = new Dictionary<string, Footprint>();

        /// <summary>
        /// Initializes a new instance of the <see cref="FootprintContainer" /> class.
        /// Creates and fills the container with all the footprints found in the passed FPC representation.
        /// </summary>
        /// <param name="fpcStatementContainer">Enumeration of statements found in the FPC file.</param>
        public FootprintContainer(FpcStatementContainer fpcStatementContainer)
        {
            foreach (var footprintRange in fpcStatementContainer.GetSection("footprints").Children("name", "author", "source", "description"))
            {
                string footprintName = footprintRange.GetFirstStatement().GetParam(1);
                Footprint footprint = new Footprint(footprintName);

                string units = footprintRange.FirstChild("units").GetFirstStatement().GetParam(1);
                if (units != null)
                {
                    footprint.ConversionFactor = Util.ConversionFactor[units];
                }

                foreach (var pin in footprintRange.FirstChild("n_pins").Children("pin"))
                {
                    FpcStatement pinStatement = pin.GetFirstStatement();
                    footprint.AddHole(pinStatement.GetParamAsDouble(2), pinStatement.GetParamAsDouble(3), pinStatement.GetParamAsDouble(4));
                }

                foreach (var outline in footprintRange.Children("outline_polyline"))
                {
                    Outline outlinePart = new Outline();
                    var outlineStatement = outline.GetFirstStatement();
                    Point firstPointOfOutline =
                        new Point(
                            outlineStatement.GetParamAsDouble(2),
                            outlineStatement.GetParamAsDouble(3),
                            footprint.ConversionFactor);
                    Point startOfOutline = firstPointOfOutline;
                    foreach (var corner in outline.Children())
                    {
                        int cornerType;
                        var cornerStatement = corner.GetFirstStatement();
                        if (corner.Name == "next_corner")
                        {
                            Point nextPointOfOutline =
                                new Point(
                                    cornerStatement.GetParamAsDouble(1),
                                    cornerStatement.GetParamAsDouble(2),
                                    footprint.ConversionFactor);
                            cornerType = cornerStatement.GetParamAsInt(3);
                            outlinePart.Add(OutlineElement.GetOutlineElement(cornerType, firstPointOfOutline, nextPointOfOutline));
                            firstPointOfOutline = nextPointOfOutline;
                        }
                        else if (corner.Name == "close_polyline")
                        {
                            cornerType = cornerStatement.GetParamAsInt(1);
                            outlinePart.Add(OutlineElement.GetOutlineElement(cornerType, firstPointOfOutline, startOfOutline));
                        }
                    }

                    footprint.AddOutline(outlinePart);
                }

                this.footprintIndex.Add(footprintName, footprint);
            }
        }

        /// <summary>
        /// Generates the OpenScad source code to represent all the footprints contained in the container.
        /// </summary>
        /// <param name="sb">String builder to which attach the Open Scad source code.</param>
        public void Generate(StringBuilder sb)
        {
            foreach (var footprint in this.footprintIndex)
            {
                sb.Append("module FootprintHoles_");
                sb.AppendIdentifier(footprint.Key);
                sb.Append(" () {\n");
                foreach (var h in footprint.Value.Holes)
                {
                    sb.Append("  translate([");
                    Point center = h.Center;
                    sb.AppendNanometers(center.X);
                    sb.Append(',');
                    sb.AppendNanometers(center.Y);
                    sb.Append(",-5])");
                    sb.Append("cylinder(r=");
                    sb.AppendNanometers(h.Diameter / 2);
                    sb.Append(", h=10, $fn=20);\n");
                }

                sb.Append("}\n");
            }
        }

        /// <summary>
        /// Iterates through all the footprint in the container calling the visitor delegate.
        /// </summary>
        /// <param name="visitor">Visitor delegate accepting the name of the footprint and a reference to the footprint itself.</param>
        public void ForEach(Action<string, Footprint> visitor)
        {
            foreach (var p in this.footprintIndex)
            {
                visitor(p.Key, p.Value);
            }
        }
    }
}
