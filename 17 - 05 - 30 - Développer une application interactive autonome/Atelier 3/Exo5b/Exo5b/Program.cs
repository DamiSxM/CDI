using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo5b
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
            Console.WriteLine("Valeur avant méthode modif valeur {0}", tabS[0]);
            modTabValeur(tabS);
            Console.WriteLine("Valeur après méthode modif valeur {0}", tabS[0]);
            modTabValeur2(tabS);
            Console.WriteLine("Valeur après méthode modif valeur {0}", tabS[0]);

            Console.WriteLine("tabS = reférence");
        }

        private static void modTabValeur(int[] tab0)
        {
            tab0[0] = 8;
        }
        private static void modTabValeur2(int[] tab0)
        {
            tab0[0] = 8;
            tab0 = new int[] { 9, 10, 11 };
        }
    }
}