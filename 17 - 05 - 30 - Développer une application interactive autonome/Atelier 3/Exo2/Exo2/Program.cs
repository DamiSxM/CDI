using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exo2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("part I");
            Console.WriteLine("in");
            int a, b;
            a = int.Parse(Console.ReadLine());
            b = a;
            b = int.Parse(Console.ReadLine());
            Console.WriteLine("out");
            Console.WriteLine(a);
            Console.WriteLine(b);

            Console.WriteLine("part II");
            int[] tabA, tabB;
            tabA = new int[3] {2,5,4};
            tabB = tabA;

            tabB[0] = 10;

            Console.WriteLine(tabA[0]);
            Console.WriteLine(tabB[0]);

            Console.WriteLine("tabB == ref de tabA");

            Console.ReadLine();
        }
    }
}
