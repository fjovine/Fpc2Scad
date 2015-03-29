// <copyright file="Footprint.cs" company="Francesco Iovine">
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
    /// This class represents the footprint of a part, i.e. the geometrical description both of the outline of the part and of the holes (if through hole) or 
    /// the pads (if SMD) of its pins.
    /// </summary>
    public class Footprint : IOscadWriter
    {
        /// <summary>
        /// List of outline segments composing the outline of the footprint.
        /// </summary>
        private List<Outline> outline = new List<Outline>();

        /// <summary>
        /// List of the holes/pads composing the footprint,
        /// </summary>
        private List<Hole> holeList = new List<Hole>();

        /// <summary>
        /// Initializes a new instance of the <see cref="Footprint" /> class.
        /// </summary>
        /// <param name="name">Unique identifier or name for the footprint.</param>
        public Footprint(string name)
        {
            this.Name = name;
            this.ConversionFactor = 1.0;
        }

        /// <summary>
        /// Gets or sets the default conversion factor for the footprint.
        /// </summary>
        public double ConversionFactor
        {
            get;
            set;
        }

        /// <summary>
        /// Gets the name of the footprint.
        /// The name of the footprint must be unique among the PCB.
        /// </summary>
        public string Name
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets an enumeration of the holes being part of the footprint.
        /// </summary>
        public IEnumerable<Hole> Holes
        {
            get
            {
                return this.holeList.AsEnumerable<Hole>();
            }
        }

        /// <summary>
        /// Gets an enumeration of the outline segments being part of the footprint.
        /// </summary>
        public IEnumerable<Outline> Outline
        {
            get
            {
                return this.outline.AsEnumerable<Outline>();
            }
        }

        /// <summary>
        /// Add a hole or a pad to the outline.
        /// </summary>
        /// <param name="diameter">Diameter of the hole, 0 if no hole is present.</param>
        /// <param name="x">X coordinate of the hole.</param>
        /// <param name="y">Y coordinate of the hole.</param>
        public void AddHole(double diameter, double x, double y) 
        {
            Hole hole = new Hole(
                this.ConversionFactor * diameter, 
                new Point(this.ConversionFactor * x, this.ConversionFactor * y));
            this.holeList.Add(hole);
        }

        /// <summary>
        /// Add an outline segment to the outline of the footprint.
        /// </summary>
        /// <param name="outlineSegment">Outline segment to be added.</param>
        public void AddOutline(Outline outlineSegment)
        {
            this.outline.Add(outlineSegment);
        }

        /// <summary>
        /// Generate the OpenScad code for the footprint and append it to the passed string builder.
        /// </summary>
        /// <param name="sb">String builder the Open Scad code must be appended to.</param>
        public void Generate(StringBuilder sb)
        {
            sb.Append("module FootprintOutline_");
            sb.AppendIdentifier(this.Name);
            sb.Append(" () {\n");
            sb.Append("    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }\n");
            sb.Append("  color(\"gray\")\n");
            sb.Append("  linear_extrude(height=");
            sb.Append(5);
            sb.Append(") {\n");
            foreach (var poly in this.Outline)
            {
                poly.GeneratePolygon(sb, 4);
            }

            sb.Append("  }\n");
            foreach (var pin in this.Holes)
            {
                sb.Append("  translate([");
                sb.AppendPoint(pin.Center);
                sb.Append(",0]) pin(); \n");
            }

            sb.Append("}\n");
        }
    }
}
