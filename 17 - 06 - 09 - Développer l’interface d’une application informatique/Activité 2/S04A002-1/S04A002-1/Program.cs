using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace S04A002_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Write("test.txt", Console.ReadLine());
            Console.WriteLine(Read("test.txt"));

            Console.ReadLine();
        }

        static void Write(string file, string txt)
        {
            FileStream fs = new FileStream(file, FileMode.Create, FileAccess.Write);
            using (StreamWriter sw = new StreamWriter(fs, UTF8Encoding.Unicode))
            {
                sw.WriteLine(txt);
            }
            fs.Close();
        }

        static string Read(string file)
        {
            string txt = "";
            FileStream fs = new FileStream(file, FileMode.Open, FileAccess.Read);
            using (StreamReader sr = new StreamReader(fs, UTF8Encoding.Unicode))
            {
                txt = sr.ReadLine();
            }
            fs.Close();
            return txt;
        }

    }
}
