// <copyright file="Util.cs" company="Francesco Iovine">
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
    /// Static class containing some utility methods of general usage.
    /// </summary>
    public static class Util
    {
        /// <summary>
        /// Dictionary that maps the string identifying the units to the conversion factor to nanometers, i.e. the factor the measurement
        /// expressed in the said units must be multiplied by to get the distance in nanometers.
        /// </summary>
        public static readonly Dictionary<string, double> ConversionFactor = new Dictionary<string, double>()
        {
            { "NM", 1.0 },
            //// inch / 1000 mil * (25.4 mm /inch) * (1E6 nm / mm)
            { "MIL", 1E6 * 25.4 / 1000 },
            { "MM", 1E6 }
        };

        /// <summary>
        /// There are some characters in FCP identifiers that are not usable in Scad. This dictionary maps the forbidden character
        /// to the substitute character to be used.
        /// </summary>
        private static Dictionary<char, char> invalidCharacters = new Dictionary<char, char>()
        {
            { '-', '_' }
        };

        /// <summary>
        /// Extension method that appends a distance with the micrometer resolution out of a nanometer resolution to the string builder.
        /// </summary>
        /// <param name="sb">String builder to be extended.</param>
        /// <param name="distanceInNanometers">Distance in nanometers.</param>
        public static void AppendNanometers(this StringBuilder sb, double distanceInNanometers)
        {
            sb.AppendFormat("{0:0.000}", distanceInNanometers / 1E6);
        }

        /// <summary>
        /// Extension method that appends an identifier to the string, transforming unfit characters into characters usable for open scad.
        /// </summary>
        /// <param name="sb">String builder to be extended.</param>
        /// <param name="identifier">Identifier (i.e. string) with invalid characters</param>
        public static void AppendIdentifier(this StringBuilder sb, string identifier)
        {
            foreach (char c in identifier)
            {
                char trans;
                if (!invalidCharacters.TryGetValue(c, out trans))
                {
                    trans = c;
                }

                sb.Append(trans);
            }
        }

        /// <summary>
        /// This extension method to the string class used to get an adapted identifier string.
        /// </summary>
        /// <param name="identifier">FPC identifier string that will be adapted to Scad.</param>
        /// <returns>Returns the adapted identifier.</returns>
        public static string ToIdentifier(this string identifier)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendIdentifier(identifier);
            return sb.ToString();
        }
        
        /// <summary>
        /// This extension  method appends to a string builder the coordinates of the passed point.
        /// </summary>
        /// <param name="sb">StringBuilder to which the coordinates will be appended.</param>
        /// <param name="pt">Point whose string description is to be appended to the passed string builder.</param>
        public static void AppendPoint(this StringBuilder sb, Point pt)
        {
            sb.AppendNanometers(pt.X);
            sb.Append(',');
            sb.AppendNanometers(pt.Y);
        }
    }
}