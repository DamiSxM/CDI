using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo6
{
    class Program
    {
        static void Main(string[] args)
        {
            argValeur();

            Console.ReadLine();
        }

        private static void argValeur()
        {
            int[] tabS = new int[3] { 1, 4, 6 };
            Console.WriteLine("Valeur avant méthode modif valeur {0} et {1}", tabS[0], tabS[1]);
            modTabValeur(ref tabS);
            Console.WriteLine("Valeur après méthode modif valeur {0} et {1}", tabS[0], tabS[1]);
            modTabValeur2(ref tabS);
            Console.WriteLine("Valeur après méthode modif valeur {0} et {1}", tabS[0], tabS[1]);
            Console.WriteLine("ref de ref");
        }

        private static void modTabValeur(ref int[] tab0)
        {
            tab0[0] = 8;
        }
        private static void modTabValeur2(ref int[] tab0)
        {
            tab0[0] = 8;
            tab0 = new int[] { 9, 10, 11 };
        }
    }
}
