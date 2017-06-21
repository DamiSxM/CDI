using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo1
{
    class Program
    {
        static void Main(string[] args)
        {
            F_Vide_Partagee();

            Console.ReadLine();
        }

        static void F_Vide_Partagee()
        {
            Console.Write("Fournir un nombre entier : ");
            int a;
            short b;
            long c;
            int.TryParse(Console.ReadLine(), out a);
            Console.WriteLine(a);
            b = (short) a++;
            Console.WriteLine(b);
            c = ++a;
            Console.WriteLine(c);
        }

    }
}
