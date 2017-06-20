using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo4
{
    class Program
    {
        static void Main(string[] args)
        {
            argValeurRef();
            Console.ReadLine();
        }

        private static void modifierValeurRef(ref int o)
        {
            o = 4;
        }

        private static void argValeurRef()
        {
            int s = 3;
            Console.WriteLine("Valeur avant appel méthode modif valeur par ref {0}", s);
            modifierValeurRef(ref s);
            Console.WriteLine("Valeur après appel méthode modif valeur par ref {0}", s);
        }
    }
}
