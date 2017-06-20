using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;

namespace SalarieTest
{
    class SalarieTest
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Salarie.CompteurInstances + "\n");

            Salarie[] salaries = new Salarie[8]; // création tab
            for (int i = 0; i < salaries.Length; i++)
            {
                salaries[i] = new Salarie(); // créa des instances
            }

            initSalarie(salaries[0], "Damien", "Bachelet", "nn000nn", 1200.0, 0.5, new DateTime(1986, 10, 13)); // assignation
            initSalarie(salaries[1], "Dami0ena", "Bachelet", "nn000nn", 1200.0, 0.5, new DateTime(1986, 10, 13));
            initSalarie(salaries[2], "Da", "Bac0helet", "nn000nn", 1200.0, 0.5, new DateTime(1986, 10, 13));
            initSalarie(salaries[3], "Damien", "Bachelet", "nn00nn", 1200.0, 0.5, new DateTime(1986, 10, 13));
            initSalarie(salaries[4], "Damien", "Bachelet", "nn000nn", 1200.0, 0.7, new DateTime(1986, 10, 13));
            initSalarie(salaries[5], "Damien", "Bachelet", "nn000nn", 1200.0, 0.5, new DateTime(1800, 10, 13));
            initSalarie(salaries[6], "Damien", "Bachelet", "nn000nn", 1200.0, 0.5, new DateTime(2050, 10, 13));
            initSalarie(salaries[7], "Damien", "Bachelet", "nn000nn", 1200.0, 0.5, new DateTime(1986, 10, 13));

            foreach (Salarie s in salaries) // affichage
            {
                Console.WriteLine("Nom : {0}", s.Nom);
                Console.WriteLine("Prénom : {0}", s.Prenom);
                Console.WriteLine("Matricule : {0}", s.Matricule);
                Console.WriteLine("Salaire Brut: {0}", s.SalaireBrut);
                Console.WriteLine("Taux CS : {0}", s.TauxCS);
                Console.WriteLine("Salaire Net : {0}", s.SalaireNet);
                Console.WriteLine("Date de naissance : {0}", s.DateNaissance.ToString());
                Console.Write("\n");
            }

            Console.WriteLine(Salarie.CompteurInstances);

            for (int i = 0; i < salaries.Length; i++)
            {
                salaries[i] = null;
            }

            GC.Collect();
            System.Threading.Thread.Sleep(500);

            Console.WriteLine(Salarie.CompteurInstances);

            Console.ReadLine();

            /*Console.Clear();

            Salarie sal1 = new Salarie();
            initSalarie(sal1, "Bob", "Marley", "nn000nn", 1200.0, 0.5, new DateTime(1986, 10, 13)); // assignation
            Salarie sal2 = new Salarie(sal1);

            //autre();

            Console.ReadLine();*/
        }

        static void initSalarie(Salarie s, string nom, string prenom, string mat, double salBrut, double tauxCS, DateTime bD)
        {
            s.Nom = nom;
            s.Prenom = prenom;
            s.Matricule = mat;
            s.SalaireBrut = salBrut;
            s.TauxCS = tauxCS;
            s.DateNaissance = bD;
        }

        static void autre()
        {
            Salarie s = new Salarie();
            bool loop = true;
            do
            {
                Console.Clear();
                Console.Write("Entrez le nom : ");
                string m = Console.ReadLine();
                if (Salarie.isNom_OK(m))
                {
                    s.Nom = m;
                    loop = false;
                }
            } while (loop);

            loop = true;
            do
            {
                Console.Clear();
                Console.Write("Entrez le prénom : ");
                string m = Console.ReadLine();
                if (Salarie.isPrenom_OK(m))
                {
                    s.Prenom = m;
                    loop = false;
                }
            } while (loop);

            loop = true;
            do
            {
                Console.Clear();
                Console.Write("Entrez le matricule : ");
                string m = Console.ReadLine();
                if (Salarie.isMatricule_OK(m))
                {
                    s.Matricule = m;
                    loop = false;
                }
            } while (loop);

            loop = true;
            do
            {
                Console.Clear();
                Console.Write("Entrez la date de naissance : ");
                string m = Console.ReadLine();
                if (Salarie.isDateNaissance_Ok(DateTime.Parse(m)))
                {
                    s.DateNaissance = DateTime.Parse(m);
                    loop = false;
                }
            } while (loop);
        }
    }
}
