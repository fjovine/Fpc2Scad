// <copyright file="CWArc.cs" company="Francesco Iovine">
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
    /// Class describing a counter clockwise arc outline element.
    /// </summary>
    public class CWArc : OutlineElement
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CWArc" /> class.
        /// </summary>
        /// <param name="pi">Initial point of the arc.</param>
        /// <param name="pf">Final point of the arc.</param>
        public CWArc(Point pi, Point pf)
            : base(pi, pf)
        {
        }

        /// <summary>
        /// Computes an enumeration of the points composing the polygon approximating the arc.
        /// </summary>
        /// <returns>Return an enumeration of the points composing the polygon approximating the arc.</returns>
        public override IEnumerable<Point> GetPoints()
        {
            return this.GetArcPoints(true);
        }
    }
}
