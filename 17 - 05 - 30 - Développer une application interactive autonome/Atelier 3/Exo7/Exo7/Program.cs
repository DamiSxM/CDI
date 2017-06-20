using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo7
{
    class Program
    {
        static void Main(string[] args)
        {
            string A = "", B = "";
            init(ref A, ref B);
            string[] result = switchString(A, B);
            Console.WriteLine("A : {0}", result[0]);
            Console.WriteLine("B : {0}", result[1]);

            switchString2(ref A, ref B);
            Console.WriteLine("A : {0}", result[0]);
            Console.WriteLine("B : {0}", result[1]);

            Console.WriteLine("Marche PÔ ave les !");

            Console.ReadLine();
        }

        static void init(ref string a, ref string b)
        {
            Console.Write("Enter un premier texte : ");
            a = Console.ReadLine();
            Console.Write("Enter un deuxième texte : ");
            b = Console.ReadLine();
        }

        static string[] switchString(string a, string b)
        {
            return new string[] { b, a };
        }
        static void switchString2(ref string a, ref string b)
        {
            string tmp = a;
            a = b;
            b = a;
        }
    }
}
