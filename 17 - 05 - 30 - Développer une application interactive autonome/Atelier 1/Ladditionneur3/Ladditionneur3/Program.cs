using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ladditionneur3
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

            int nb_A, nb_B;

            nb_A = intInput();
            nb_B = intInput();
            
            Console.WriteLine(nb_A.ToString() + "+" + nb_B.ToString() + "=" + Add(nb_A, nb_B).ToString());
            Console.ReadLine();
        }

        static int intInput()
        {
            bool isNB;
            int v;
            do
            {
                Console.Write("Entrer nombre : ");
                isNB = int.TryParse(Console.ReadLine(), out v);
            } while (!isNB);
            return v;
        }
        static int Add(int a, int b)
        {
            return a + b;
        }
    }
}
