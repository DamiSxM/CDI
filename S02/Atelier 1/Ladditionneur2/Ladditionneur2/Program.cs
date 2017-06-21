using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ladditionneur2
{
    class Program
    {
        static void Main(string[] args)
        {
            InAndOut();
        }

        static void InAndOut()
        {
            Console.WriteLine("Entrez deux nombres :");
            int nb_A = int.Parse(Console.ReadLine());
            int nb_B = int.Parse(Console.ReadLine());
            Console.WriteLine(nb_A.ToString() + "+" + nb_B.ToString() + "=" + Add(nb_A, nb_B).ToString());
            Console.ReadLine();
        }

        static int Add(int a, int b)
        {
            return a + b;
        }
    }
}
