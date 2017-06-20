using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;

namespace S04A001_2
{
    class Program
    {
        static void Main(string[] args)
        {
            Salaries team = new Salaries();
            team.Add(new Salarie("Bachelet", "Damien", "00xxx00"));
            team.Add(new Salarie("Bacheleta", "Damiena", "01xxx01"));
            team.Add(new Salarie("Bacheleta", "Damiena", "01xxx01")); // Ne sera pas ajouté : même matricul
            Console.WriteLine("Non ajout avec même matricule : {0}", team.Count == 2);


            team.Add(new Salarie("Bacheletb", "Damienb", "02xxx02"));
            Salarie test = new Salarie("Bacheletc", "Damienc", "03xxx03");
            team.Add(test);

            Console.WriteLine("List :");
            afficherSalaries(team);

            team.supprimerSalarie("01xxx01");

            afficherSalaries(team);

            team.supprimerSalarie(test);

            afficherSalaries(team);

            Console.ReadLine();
            Console.Clear();

            SalariesH team2 = new SalariesH();
            team2.Add(new Salarie("Bachelet", "Damien", "00xxx00"));
            team2.Add(new Salarie("Bacheleta", "Damiena", "01xxx01"));
            team2.Add(new Salarie("Bacheletb", "Damienb", "01xxx01"));
            team2.Add(test);

            Console.WriteLine("HashSet :");
            afficherSalariesH(team2);

            team2.supprimerSalarie("01xxx01");

            afficherSalariesH(team2);

            team2.supprimerSalarie(test);

            afficherSalariesH(team2);

            Console.ReadLine();
        }
        static void afficherSalaries(Salaries team)
        {
            Console.Write("\n");
            foreach (Salarie item in team) Console.WriteLine("Nom : {0}, Prénom : {1}, Matricule : {2}", item.Nom, item.Prenom, item.Matricule);
        }
        static void afficherSalariesH(SalariesH team)
        {
            Console.Write("\n");
            foreach (Salarie item in team) Console.WriteLine("Nom : {0}, Prénom : {1}, Matricule : {2}", item.Nom, item.Prenom, item.Matricule);
        }
    }
}
