// <copyright file="OutlineElement.cs" company="Francesco Iovine">
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
    /// The board outline is composed by outline elements that share the same basic structure
    /// </summary>
    public abstract class OutlineElement
    {
        /// <summary>
        /// If the outline element is an arc of ellipse (or circle as a particular case), it is rendered in the scad file as a regular polygon.
        /// Each side of such polygon, create an angle of this value.
        /// </summary>
        protected const double AngleRendering = 10 * Math.PI / 180;

        /// <summary>
        /// This integer->ArcDescriptor dictionary maps the quadrant number (counted counterclockwise as usual in Trigonometry) to the arc descriptor to be 
        /// used to render it in the case of clockwise arc..
        /// </summary>
        private Dictionary<int, ArcDescriptor> clockwise = new Dictionary<int, ArcDescriptor>() 
        {
            { 1, new ArcDescriptor(true, Math.PI, Math.PI / 2) },
            { 2, new ArcDescriptor(false, 3 * Math.PI / 2, Math.PI) },
            { 3, new ArcDescriptor(true, 2 * Math.PI, 3 * Math.PI / 2) },
            { 4, new ArcDescriptor(false, Math.PI / 2, 0) }
        };

        /// <summary>
        /// This integer->ArcDescriptor dictionary maps the quadrant number (counted counterclockwise as usual in Trigonometry) to the arc descriptor to be 
        /// used to render it in the case of counter clockwise arc.
        /// </summary>
        private Dictionary<int, ArcDescriptor> counterClockwise = new Dictionary<int, ArcDescriptor>()
        {
            { 1, new ArcDescriptor(false, 3 * Math.PI / 2, 2 * Math.PI) },
            { 2, new ArcDescriptor(true, 0, Math.PI / 2) },
            { 3, new ArcDescriptor(false, Math.PI / 2, Math.PI) },
            { 4, new ArcDescriptor(true, Math.PI, 3 * Math.PI / 2) }
        };

        /// <summary>
        /// Initializes a new instance of the <see cref="OutlineElement" /> class defining the initial and final points.
        /// </summary>
        /// <param name="pi">Initial point of the outline element.</param>
        /// <param name="pf">Final point of the outline element.</param>
        protected OutlineElement(Point pi, Point pf)
        {
            this.InitialPoint = pi;
            this.FinalPoint = pf;
        }

        /// <summary>
        /// Gets the initial point of the outline element, i.e. the point that initiates the outline.
        /// </summary>
        public Point InitialPoint
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the final point of the outline element, i.e. point that terminates the outline
        /// </summary>
        public Point FinalPoint
        {
            get;
            private set;
        }

        /// <summary>
        /// Gets the CIF, Center Initial Final point of the outline element.
        /// The initial and final points define a rectangle. If the outline is a straight segment, then it is the diagonal of the rectangle itself.
        /// If the outline is an arc, then it can be clockwise or counterclockwise. The center of the arc differs in each case.
        /// CIF means Center Initial Final and this is the getter of its coordinates.
        /// </summary>
        private Point CIF
        {
            get
            {
                return new Point(this.InitialPoint.X, this.FinalPoint.Y);
            }
        }

        /// <summary>
        /// Gets the CFI, Center Final Initial point of the outline element.
        /// </summary>
        private Point CFI
        {
            get
            {
                return new Point(this.FinalPoint.X, this.InitialPoint.Y);
            }
        }

        /// <summary>
        /// Factory method to create an arc based on its type and the extreme coordinates.
        /// </summary>
        /// <param name="type">Code describing the type of outline element following FPC documentation.</param>
        /// <param name="pi">Initial point of the outline element.</param>
        /// <param name="pf">Final point of the outline element.</param>
        /// <returns>Returns an arc based on the passed type and the coordinates of the extremes.</returns>
        public static OutlineElement GetOutlineElement(int type, Point pi, Point pf)
        {
            Debug.Assert(type >= 0 && type <= 2, "Outline type not supported");
            OutlineElement result = null;
            switch (type)
            {
                case 0:
                    result = new LinearOutlineElement(pi, pf);
                    break;
                case 1:
                    result = new CWArc(pi, pf);
                    break;
                case 2:
                    result = new CCWArc(pi, pf);
                    break;
            }

            return result;
        }

        /// <summary>
        /// Abstract method that returns an enumeration of the coordinates of all the vertexes of the polygon approximating the outline
        /// </summary>
        /// <returns>Returns an enumeration of the coordinates of all the vertexes of the polygon approximating the outline</returns>
        public abstract IEnumerable<Point> GetPoints();

        /// <summary>
        /// Computes the enumeration of point coordinates to render the arc.
        /// </summary>
        /// <param name="cw">True if the arc is clockwise.</param>
        /// <returns>The enumeration of point coordinates to render the arc.</returns>
        protected IEnumerable<Point> GetArcPoints(bool cw)
        {
            double angleSegmentInitialFinal = this.InitialPoint.Angle(this.FinalPoint);
            int quadrant;

            if (angleSegmentInitialFinal < -Math.PI / 2)
            {
                quadrant = 3;
            }
            else if (angleSegmentInitialFinal < 0)
            {
                quadrant = 4;
            }
            else if (angleSegmentInitialFinal < Math.PI / 2)
            {
                quadrant = 1;
            }
            else
            {
                quadrant = 2;
            }

            ArcDescriptor arcDescriptor = cw ? this.clockwise[quadrant] : this.counterClockwise[quadrant];
            Point center = arcDescriptor.IsFI ? this.CFI : this.CIF;
            double angleRendering = cw ? -AngleRendering : AngleRendering;
            double rx = Math.Abs(this.InitialPoint.X - this.FinalPoint.X);
            double ry = Math.Abs(this.InitialPoint.Y - this.FinalPoint.Y);

            for (double angle = arcDescriptor.AlphaI; Math.Abs(angle - arcDescriptor.AlphaF) > 1E-3; angle += angleRendering)
            {
                yield return new Point(center.X + (rx * Math.Cos(angle)), center.Y + (ry * Math.Sin(angle)));
            }
        }

        /// <summary>
        /// Descriptor of an arc-shaped outline
        /// </summary>
        private struct ArcDescriptor
        {
            /// <summary>
            /// True if the arc is from final to initial point.
            /// </summary>
            public bool IsFI;

            /// <summary>
            /// Initial angle of the arch, expressed in radians.
            /// </summary>
            public double AlphaI;

            /// <summary>
            /// Final angle of the arch, expressed in radians.
            /// </summary>
            public double AlphaF;

            /// <summary>
            /// Initializes a new instance of the <see cref="ArcDescriptor" /> struct.
            /// </summary>
            /// <param name="isFI">True if the arc is from final to initial point.</param>
            /// <param name="alphaI">Initial angle in radians.</param>
            /// <param name="alphaF">Final angle in radians.</param>
            public ArcDescriptor(bool isFI, double alphaI, double alphaF)
            {
                this.IsFI = isFI;
                this.AlphaI = alphaI;
                this.AlphaF = alphaF;
            }
        }
    }
}
