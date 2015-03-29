// <copyright file="Program.cs" company="Francesco Iovine">
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
    using System.Globalization;
    using System.IO;
    using System.Linq;
    using System.Reflection;
    using System.Text;
    using System.Threading.Tasks;

    /// <summary>
    /// Static class hosting the entry point of the program.
    /// </summary>
    public static class Program
    {
        /// <summary>
        /// No parameters on the command line.
        /// </summary>
        private const int NOPARAMCOMMANDLINE = -1;

        /// <summary>
        /// The specified folder does not exist.
        /// </summary>
        private const int NONEXISTENTFOLDER = -2;

        /// <summary>
        /// There is a syntax error on the command line.
        /// </summary>
        private const int SYNTAXERROR = -3;

        /// <summary>
        /// No fpc file is specified.
        /// </summary>
        private const int NOFILESPECIFIED = -4;

        /// <summary>
        /// The specified file does not exist.
        /// </summary>
        private const int NONEXISTENTFILE = -5;

        /// <summary>
        /// DefaultExtension of input file.
        /// </summary>
        private const string InputExtension = ".fpc";

        /// <summary>
        /// DefaultExtension of output file.
        /// </summary>
        private const string OutputExtension = ".scad";

        /// <summary>
        /// Entry point of the application.
        /// Synopsis Fpc2Scad [options] filename
        /// options
        /// -g[{folder}] : generate footprints, if folder is present, it stores them in the folder otherwise in the current folder. No scad generation.
        /// -d{folder} : folder where the reference footprints are stored.
        /// </summary>
        /// <param name="args">Array containing the parsed command line parameters.</param>
        public static void Main(string[] args)
        {
            string currFolder = @"." + Path.DirectorySeparatorChar;
            bool isFootprintGeneration = false;
            string generatedFootprintPath = currFolder;
            string footprintPath = currFolder;

            SetDefaultCulture(new CultureInfo("en-US"));

            if (args.Length < 1)
            {
                ReportErrorAndExit(true, NOPARAMCOMMANDLINE, "No parameters on command line");
            }

            string fileName = null;
            foreach (var arg in args)
            {
                if (arg.StartsWith("-g"))
                {
                    isFootprintGeneration = true;
                    if (arg.Length > 2)
                    {
                        generatedFootprintPath = arg.Substring(2);
                        if (!Directory.Exists(generatedFootprintPath))
                        {
                            ReportErrorAndExit(false, NONEXISTENTFOLDER, "The requested folder {0} does not exist", generatedFootprintPath);
                        }
                    }
                    else
                    {
                        ReportErrorAndExit(true, SYNTAXERROR, "The -g option must be followed by a folder name with no space in between");
                    }

                    Console.WriteLine("Generated folder: " + generatedFootprintPath);
                }
                else if (arg.StartsWith("-d"))
                {
                    if (arg.Length <= 2)
                    {
                        ReportErrorAndExit(false, NONEXISTENTFOLDER, "No footprint folder found");
                    }
                    else
                    {
                        footprintPath = arg.Substring(2);
                    }

                    Console.WriteLine("Footprint folder: " + footprintPath);
                }
                else if (!arg.StartsWith("-"))
                {
                    if (fileName != null)
                    {
                        ReportErrorAndExit(false, SYNTAXERROR, "Only one filename possible");
                    }

                    // It is the file name
                    int extensionPostion = arg.LastIndexOf('.');
                    if (extensionPostion == -1)
                    {
                        // no extension
                        fileName = arg;
                    }
                    else
                    {
                        fileName = arg.Substring(0, extensionPostion);
                    }
                }
                else
                {
                    ReportErrorAndExit(true, SYNTAXERROR, "Syntax error on command line");
                }
            }

            if (fileName == null)
            {
                ReportErrorAndExit(false, NOFILESPECIFIED, "No filename specified");
            }

            string inputFileName = fileName + InputExtension;
            string outputFile = currFolder + Path.GetFileName(fileName) + OutputExtension;

            Console.WriteLine("Fpc2scad Copyright (C) 2015 Francesco Iovine");
            Console.WriteLine("This program comes with ABSOLUTELY NO WARRANTY ");
            Console.WriteLine("This is free software, and you are welcome to redistribute it under certain conditions; for details https://www.gnu.org/licenses/gpl.html.");

            Console.WriteLine("fileName: [" + fileName + "]");
            Console.WriteLine("inputFileName: [" + inputFileName + "]");
            Console.WriteLine("outputFileName: [" + outputFile + "]");
            try
            {
                FpcStatementContainer fpcStatementContainer = new FpcStatementContainer(inputFileName);
                if (isFootprintGeneration)
                {
                    GenerateFootprints(footprintPath, generatedFootprintPath, fpcStatementContainer);
                }
                else
                {
                    GenerateScad(outputFile, fpcStatementContainer, footprintPath);
                }
            }
            catch (FileNotFoundException)
            {
                ReportErrorAndExit(false, NONEXISTENTFILE, "The requested file {0} does not exist", inputFileName);
            }
        }

        /// <summary>
        /// Generate the external file for those footprints that have not been found as 3D open scad models.
        /// </summary>
        /// <param name="footprintPath">Path where the FPC source file is.</param>
        /// <param name="outputPath">Path of the folder where to store the footprints.</param>
        /// <param name="fpcStatementContainer">Container of the statements loaded from the FPC file.</param>
        public static void GenerateFootprints(string footprintPath, string outputPath, FpcStatementContainer fpcStatementContainer)
        {
            var footprintContainer = new FootprintContainer(fpcStatementContainer);

            footprintContainer.ForEach((name, footprint) =>
            {
                string partName = "FootprintOutline_" + footprint.Name.ToIdentifier();
                string libFilename = Path.Combine(footprintPath, partName + OutputExtension);
                string partFilename = Path.Combine(outputPath, partName + OutputExtension);
                if (!File.Exists(libFilename))
                {
                    Console.WriteLine("Generating " + partFilename);
                    using (TextWriter tw = new StreamWriter(partFilename))
                    {
                        StringBuilder sb = new StringBuilder();
                        footprint.Generate(sb);
                        tw.WriteLine(sb);
                        tw.WriteLine("//" + partName + "();");
                    }
                }
            });
        }

        /// <summary>
        /// Generates the openscad source code from the loaded file.
        /// </summary>
        /// <param name="ofile">Output file name where the source will be stored.</param>
        /// <param name="fpcStatementContainer">Statement container of the loaded FPC file.</param>
        /// <param name="footprintPath">Folder to search the footprints.</param>
        public static void GenerateScad(string ofile, FpcStatementContainer fpcStatementContainer, string footprintPath)
        {
            var outlineContainer = new OutlineContainer(fpcStatementContainer);
            var footprintContainer = new FootprintContainer(fpcStatementContainer);
            var partContainer = new PartContainer(fpcStatementContainer);
            
            using (TextWriter tw = new StreamWriter(ofile))
            {
                StringBuilder sb = new StringBuilder();
                outlineContainer.Generate(sb);
                footprintContainer.Generate(sb);

                // Generates the part modules in the board
                footprintContainer.ForEach((name, footprint) =>
                {
                    string partName = "FootprintOutline_" + footprint.Name.ToIdentifier();
                    string partFilename = Path.Combine(footprintPath, partName + OutputExtension);
                    if (File.Exists(partFilename))
                    {
                        Console.WriteLine("Loading " + partFilename);
                        string s = File.ReadAllText(partFilename);
                        sb.Append(s);
                    }
                    else
                    {
                        footprint.Generate(sb);
                    }
                });
                sb.Append("/* Begin board */\n");

                // Generates the holes in the board
                sb.Append("difference() {\n  color(\"green\") Outline();\n");
                partContainer.ForEach((name, part) =>
                {
                    part.AppendPosition(sb);
                    sb.Append(" FootprintHoles_");
                    sb.AppendIdentifier(part.Shape);
                    sb.Append(" ();\n");
                });
                sb.Append("}\n");
                partContainer.ForEach((name, part) =>
                {
                    string partName = "FootprintOutline_" + part.Shape.ToIdentifier();
                    sb.Append("/* " + name + " */\n");
                    part.AppendPosition(sb);
                    sb.Append(partName);
                    sb.Append(" ();\n");

                    /*
                    string partName = "FootprintOutline_"+part.Shape.ToIdentifier();
                    string partFilename = Path.Combine(workingPath, partName + ".scad");
                    if (File.Exists(partFilename))
                    {
                        Console.WriteLine("Loading " + partFilename);
                        string s = File.ReadAllText(partFilename);
                        sb.Append(s);
                    }
                    else
                    {
                        part.AppendPosition(sb);
                        sb.Append(partName);
                        sb.Append(" ();\n");
                    }
                     * */
                });
                tw.Write(sb);
            }
        }

        /// <summary>
        /// Defines the default culture for the whole environment
        /// </summary>
        /// <param name="culture">Default culture info to be set regardless from the locale of the host computer.</param>
        public static void SetDefaultCulture(CultureInfo culture)
        {
            Type type = typeof(CultureInfo);

            try
            {
                type.InvokeMember(
                    "s_userDefaultCulture",
                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                    null,
                    culture,
                    new object[] { culture });

                type.InvokeMember(
                    "s_userDefaultUICulture",
                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                    null,
                    culture,
                    new object[] { culture });
            }
            catch 
            { 
            }

            try
            {
                type.InvokeMember(
                    "m_userDefaultCulture",
                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                    null,
                    culture,
                                    new object[] { culture });

                type.InvokeMember(
                    "m_userDefaultUICulture",
                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                    null,
                    culture,
                    new object[] { culture });
            }
            catch 
            { 
            }
        }

        /// <summary>
        /// Reports the passed formatted error on the command line and exits.
        /// </summary>
        /// <param name="showSynopsis">Value that specifies whether a synopsis of the command must be shown.</param>
        /// <param name="errorCode">Code to be returned to the called operating system.</param>
        /// <param name="errorMessageFmt">Format of the output string.</param>
        /// <param name="par">Variable number of parameters used to format the error string.</param>
        private static void ReportErrorAndExit(bool showSynopsis, int errorCode, string errorMessageFmt, params object[] par)
        {
            ReportErrorAndExit(showSynopsis, errorCode, string.Format(errorMessageFmt, par));
            Environment.Exit(errorCode);
        }

        /// <summary>
        /// Reports the passed error on the command line and exits with the passed error code.
        /// </summary>
        /// <param name="showSynopsis">Value that specifies whether a synopsis of the command must be shown.</param>
        /// <param name="errorCode">Code to be returned to the called operating system.</param>
        /// <param name="errorMessage">Error message to be shown.</param>
        private static void ReportErrorAndExit(bool showSynopsis, int errorCode, string errorMessage)
        {
            Console.WriteLine("Fpc error: " + errorMessage);
            if (showSynopsis)
            {
                Console.WriteLine("Synopsis Fpc2Scad [options] filename");
                Console.WriteLine("options");
                Console.WriteLine("  -g[{folder}] : generate footprints, if folder is present, it stores"); 
                Console.WriteLine("                 them in the folder otherwise in the current folder.");
                Console.WriteLine("                 No scad generation.");
                Console.WriteLine("  -d{folder}   : folder where the reference footprints are stored.");
            }

            Environment.Exit(errorCode);
        }
    }
}
