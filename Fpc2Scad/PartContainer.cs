// <copyright file="PartContainer.cs" company="Francesco Iovine">
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
    /// Container class for the parts used in the FPC file.
    /// </summary>
    public class PartContainer
    {
        /// <summary>
        /// Dictionary that maps the name of the part to its descriptor.
        /// </summary>
        private Dictionary<string, Part> index = new Dictionary<string, Part>();

        /// <summary>
        /// Initializes a new instance of the <see cref="PartContainer" /> class.
        /// </summary>
        /// <param name="fpcStatementContainer">Container of the statements in the FPC file.</param>
        public PartContainer(FpcStatementContainer fpcStatementContainer)
        {
            foreach (var partRange in fpcStatementContainer.GetSection("parts").Children("part"))
            {
                string partName = partRange.GetFirstStatement().GetParam(1);
                string shape = partRange.FirstChild("shape").GetFirstStatement().GetParam(1);
                FpcStatement posStatement = partRange.FirstChild("pos").GetFirstStatement();
                double x = posStatement.GetParamAsDistance(1);
                double y = posStatement.GetParamAsDistance(2);
                int side = posStatement.GetParamAsInt(3);
                double angle = posStatement.GetParamAsDouble(4);

                Part part = new Part(partName, shape, new Point(x, y), side == 0, angle);
                this.index.Add(partName, part);
            }
        }

        /// <summary>
        /// Iterator method that applies the passed visitor delegate to each and every contained Part.
        /// </summary>
        /// <param name="visitor">Visitor delegate to be called for each part in the container.</param>
        public void ForEach(Action<string, Part> visitor)
        {
            foreach (var p in this.index)
            {
                visitor(p.Key, p.Value);
            }
        }
    }
}
