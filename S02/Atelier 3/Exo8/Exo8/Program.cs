using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo8
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Entrez un nombre : ");
            int nb = int.Parse(Console.ReadLine());
            int div;
            if (isEven(nb, out div))
            {
                Console.WriteLine("Pair !");
                Console.WriteLine("{0} / 2 = {1}",nb, div);
            }
            else
            {
                Console.WriteLine("Impair !");
            }

            Console.ReadLine();
        }
        static bool isEven(int nb, out int div)
        {
            div = 0;
            if (nb % 2 == 0)
            {
                div = nb / 2;
                return true;
            }
            return false;
        }
    }
}
