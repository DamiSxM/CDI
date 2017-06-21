using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ladditionneur1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Entrez deux nombres");
            int nb_A = int.Parse(Console.ReadLine());
            int nb_B = int.Parse(Console.ReadLine());
            Console.WriteLine(nb_A.ToString() + "+" + nb_B.ToString() + "=" + (nb_A + nb_B).ToString());

            Console.ReadLine();
        }
    }
}
