using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Fpc2scad
{
    class Program
    {
        static List<string> splitLine(string line)
        {
            int endFirst = 0;
            List<string> rVal = new List<string>();
            string[] elems = line.Trim().Split(':');
            rVal.Add(elems[0]);
            if (elems.Length > 1)
            {
                string after = elems[1];
                if (after[0] == '"')
                {
                    endFirst = after.IndexOf('"');
                    rVal.Add(after.Substring(1, endFirst));
                }
                string[] other = after.Substring(endFirst + 1).Split(' ');
                rVal.AddRange(other);
            }
            return rVal;
        }
        static void Main(string[] args)
        {
            setDefaultCulture(new CultureInfo("en-US"));

            bool bOutline = false;
            Point firstPointOfOutline = null;
            Point lastPointOfOutline = null;
            int OutlinePointsCount = 0;
            int OutlinePointsCurr =0;
            int lastTipo=0;
            Outline curr = null;
            using (TextReader tr = new StreamReader(args[0])) {
                while (true)
                {
                    string line = tr.ReadLine();
                    if (line == null)
                    {
                        break;
                    }
                    if (line.Length < 1)
                    {
                        continue;
                    }
                    if (line[0] == '[') {
                        if (line == "[board]")
                        {
                            bOutline = true;
                        }
                        else
                        {
                            if (bOutline)
                            {
                                break;
                            }
                            bOutline = false;
                        }
                        continue;
                    }
                    if (bOutline)
                    {
                        List<string> parms = splitLine(line);
#if false
                        bool bFirst = true;
                        foreach (var p in parms)
                        {
                            if (bFirst)
                            {
                                bFirst = false;
                            }
                            else
                            {
                                Console.Write(" | ");
                            }
                            Console.Write(p);
                        }
                        Console.WriteLine();
#endif
                        if (parms[0] == "outline")
                        {
                            if (curr != null)
                            {
                                curr.Add(OutlineElement.GetOutlineElement(lastTipo, lastPointOfOutline, firstPointOfOutline));
                            }
                            OutlinePointsCount = int.Parse(parms[1]);
                            curr = new Outline();
                            continue;
                        }
                        if (parms[0] == "corner")
                        {
                            OutlinePointsCurr = int.Parse(parms[1]);
                            double px = double.Parse(parms[2]);
                            double py = double.Parse(parms[3]);
                            int tipo = int.Parse(parms[4]);
                            Point pt = new Point(px, py);
                            if (OutlinePointsCurr == 1)
                            {
                                firstPointOfOutline = pt;
                            }
                            else
                            {
                                curr.Add(OutlineElement.GetOutlineElement(lastTipo, lastPointOfOutline, pt));
                            }
                            lastPointOfOutline = pt;
                            lastTipo = tipo;
                        }
                    }
                }
            }
            curr.Add(OutlineElement.GetOutlineElement(lastTipo, lastPointOfOutline, firstPointOfOutline));

            string ofile = Path.ChangeExtension(args[0], ".scad");
            using (TextWriter tw = new StreamWriter(ofile))
            {
                foreach (var o in Outline.outlines)
                {
                    tw.WriteLine(o);
                }
            }
        }

        /// <summary>
        /// Defines the default culture for the whole environment
        /// </summary>
        /// <param name="culture"></param>
        public static void setDefaultCulture(CultureInfo culture)
        {
            Type type = typeof(CultureInfo);

            try
            {
                type.InvokeMember("s_userDefaultCulture",
                                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                                    null,
                                    culture,
                                    new object[] { culture });

                type.InvokeMember("s_userDefaultUICulture",
                                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                                    null,
                                    culture,
                                    new object[] { culture });
            }
            catch { }

            try
            {
                type.InvokeMember("m_userDefaultCulture",
                                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                                    null,
                                    culture,
                                    new object[] { culture });

                type.InvokeMember("m_userDefaultUICulture",
                                    BindingFlags.SetField | BindingFlags.NonPublic | BindingFlags.Static,
                                    null,
                                    culture,
                                    new object[] { culture });
            }
            catch { }
        }

    }
}
