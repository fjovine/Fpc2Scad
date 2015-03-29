// <copyright file="Point.cs" company="Francesco Iovine">
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
    /// The coordinates of a point in FPC are expressed in nanometers
    /// </summary>
    public class Point
    {
        /// <summary>
        /// Coefficient to divide nanometers to transform them in millimeters.
        /// </summary>
        public const double ToMm = 1E6;

        /// <summary>
        /// Initializes a new instance of the <see cref="Point" /> class, i.e. a point with the passed coordinates in nanometers.
        /// </summary>
        /// <param name="x">X coordinate of the point in nanometers.</param>
        /// <param name="y">Y coordinate of the point in nanometers.</param>
        public Point(double x, double y)
        {
            this.X = x;
            this.Y = y;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="Point" /> class, i.e. a point with the passed coordinates in arbitrary units.
        /// </summary>
        /// <param name="x">X coordinate of the point in arbitrary units.</param>
        /// <param name="y">Y coordinate of the point in arbitrary units.</param>
        /// <param name="conversion">Coefficient to convert from the arbitrary units to nanometers.</param>
        public Point(double x, double y, double conversion)
            : this(x * conversion, y * conversion)
        {
        }

        /// <summary>
        /// Gets the X coordinate of the point in nanometers.
        /// </summary>
        public double X
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the Y coordinate of the point in nanometer.
        /// </summary>
        public double Y
        {
            get;
            private set;
        }

        /// <summary>
        /// Computes if the passed points are equal, i.e. have the same components.
        /// </summary>
        /// <param name="pt1">First point to compare.</param>
        /// <param name="pt2">Second point to compare.</param>
        /// <returns>Returns true if the passed points are equal, i.e. have the same components.</returns>
        public static bool Equals(Point pt1, Point pt2)
        {
            object o1 = pt1 as object;
            object o2 = pt2 as object;

            if (o1 == null)
            {
                if (o2 == null)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            if (o2 == null)
            {
                return false;
            }

            return pt1.X == pt2.X && pt1.Y == pt2.Y;
        }

        /// <summary>
        /// Operator method that compares two points for equality.
        /// </summary>
        /// <param name="a">First point to be compared.</param>
        /// <param name="b">Second point to be compared.</param>
        /// <returns>Returns true if the components i.e. the coordinates of the points coincide.</returns>
        public static bool operator ==(Point a, Point b)
        {
            return Equals(a, b);
        }

        /// <summary>
        /// Operator method that compares two points for inequality.
        /// </summary>
        /// <param name="a">First point to be compared.</param>
        /// <param name="b">Second point to be compared.</param>
        /// <returns>Returns true if the components i.e. the coordinates of the points are not equal.</returns>
        public static bool operator !=(Point a, Point b)
        {
            return !Equals(a, b);
        }

        /// <summary>
        /// Overrides the Equals method.
        /// </summary>
        /// <param name="obj">Object to be compared to.</param>
        /// <returns>Returns true if the objects are equal.</returns>
        public override bool Equals(object obj)
        {
            Point other = obj as Point;
            if (other == null)
            {
                return false;
            }

            return Point.Equals(this, other);
        }

        /// <summary>
        /// Computes the hash code of the point.
        /// </summary>
        /// <returns>Returns the hash code of the point.</returns>
        public override int GetHashCode()
        {
            long lx = BitConverter.DoubleToInt64Bits(this.X);
            long ly = BitConverter.DoubleToInt64Bits(this.Y);
            long resultLong = lx & ly;
            long resultShift = resultLong >> 32;
            return (int)(resultLong | resultShift);
        }

        /// <summary>
        /// Considering this point as the origin of a polar plane, determines the angle of the other point
        /// </summary>
        /// <param name="other">Other point to be used.</param>
        /// <returns>The angle in radians of the radius from this point to the other passed point.</returns>
        public double Angle(Point other)
        {
            return Math.Atan2(other.Y - this.Y, other.X - this.X);
        }

        /// <summary>
        /// Human readable representation of the point having the format [{x coordinate nm},{y coordinate nm}]
        /// </summary>
        /// <returns>Returns a human readable representation of the point having the format [{x coordinate nm},{y coordinate nm}]</returns>
        public override string ToString()
        {
            return string.Format("[{0:0.000000},{1:0.000000}]", this.X / ToMm, this.Y / ToMm);
        }
    }
}
