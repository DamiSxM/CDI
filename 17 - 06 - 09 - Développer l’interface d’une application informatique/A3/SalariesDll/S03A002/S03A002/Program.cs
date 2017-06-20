using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;

namespace S03A002
{
    class Program
    {
        static void Main(string[] args)
        {
            Commercial comm1 = new Commercial();
            comm1.Matricule = "00xxx00";
            comm1.Nom = "nomDeTest";
            comm1.Prenom = "prenomDeTest";
            comm1.SalaireBrut = 1200;
            comm1.TauxCS = 0.5m;
            comm1.DateNaissance = new DateTime(1986, 10, 13);
            comm1.ChiffreAffaire = 1000;
            comm1.Commission = 0.005m;
            
            /*Console.BackgroundColor =  ConsoleColor.Red;
            Console.ForegroundColor = ConsoleColor.Black;*/
            Console.WriteLine(comm1);

            Console.WriteLine("\n");

            Commercial comm2 = new Commercial(comm1);
            comm2.Nom = "nomDeTestDeux";
            comm2.Prenom = "prenomDeTestDeux";
            comm2.ChiffreAffaire = 10000;
            comm2.Commission = 0.1m;

            Console.WriteLine(comm2);


            int test = 2;
            Console.WriteLine(test.ToString());

            Console.ReadLine();
        }
    }
}
