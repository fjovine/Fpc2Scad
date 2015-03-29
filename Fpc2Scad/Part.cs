// <copyright file="Part.cs" company="Francesco Iovine">
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
    /// This class represents a Part of a PCB, i.e. normally and active or passive component featuring a Shape, chosen from the list of available shapes.
    /// </summary>
    public class Part
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Part" /> class.
        /// </summary>
        /// <param name="name">Identifier of the part.</param>
        /// <param name="shape">Name of the shape to be used to represent the part.</param>
        /// <param name="position">Position of the part on the PCB.</param>
        /// <param name="isTop">True if the part is on top the PCB.</param>
        /// <param name="angle">Reference angle of the part with respect to the x axis of the PCB.</param>
        public Part(string name, string shape, Point position, bool isTop, double angle)
        {
            this.Name = name;
            this.Shape = shape;
            this.Position = position;
            this.IsTop = isTop;
            this.Angle = angle;
        }

        /// <summary>
        /// Gets the unique identifier of the part.
        /// </summary>
        public string Name
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the identifier of the shape used by the part.
        /// </summary>
        public string Shape
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the position of the part on the PCB.
        /// </summary>
        public Point Position 
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets a value indicating whether the part is on top of the PCB.
        /// </summary>
        public bool IsTop
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the angle expressed in radians (to do) of the axis of the part with respect to the x axis.
        /// </summary>
        public double Angle
        {
            get;
            private set;
        }

        /// <summary>
        /// Appends to the passed string builder the OpenScad code to correctly position the part on the PCB.
        /// </summary>
        /// <param name="sb">StringBuilder to which the part code must be appended.</param>
        /// <param name="z">Optional z level the part must be placed.</param>
        public void AppendPosition(StringBuilder sb, double z = 0)
        {
            sb.Append("  translate([");
            sb.AppendPoint(this.Position);
            sb.Append(", ");
            sb.Append(z);
            sb.Append("]) ");
            if (!this.IsTop) 
            {
                sb.Append("rotate([0,180,0]) ");
            } 

            sb.Append("rotate([0,0,");
            float coefficient = 1;
            if (this.IsTop)
            {
                coefficient = -1;
            }

            sb.Append(coefficient * this.Angle);
            sb.Append("])");
            if (this.IsTop)
            {
                sb.Append("translate([0,0,");
                sb.Append(Outline.PCBTHICKNESS);
                sb.Append("]) ");
            }
        }
    }
}
