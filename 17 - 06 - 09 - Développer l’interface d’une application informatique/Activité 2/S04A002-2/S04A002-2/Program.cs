using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;


namespace S04A002_2
{
    class Program
    {
        //static SalariesH teamH = new SalariesH();
        static Salaries team = new Salaries();
        static void Main(string[] args)
        {
            choix();
        }
        static void choix()
        {
            bool loop = true;
            do
            {
                Console.Clear();
                Console.WriteLine("C : Création | M : Modification | X : Suppression | L : Load | S : Save | Q : quit");
                char reponse = char.Parse(Console.ReadLine());
                switch (reponse)
                {
                    case 'L':
                        Load("Txt");
                        //Load("Bin");
                        //Load("Xml");
                        //Load("Json");
                        break;
                    case 'S':
                        Save("Txt");
                        //Save("Bin");
                        //Save("Xml");
                        //Save("Json");
                        break;
                    case 'C': team.Add(creationSalarie()); break;
                    case 'M': modificationSalarie(); break;
                    case 'X': suppressionSalarie(); break;
                    case 'Q': loop = false; break;
                }
            } while (loop);
        }

        #region Persistance
        static void Load(string type)
        {
            team.Clear();
            switch (type)
            {
                case "Xml" : team.LoadXml(); break;
                case "Bin" : team.LoadBinary(); break;
                case "Json" : team.LoadJson(); break;
                case "Txt" : team.LoadTxt(); break;
            }
            foreach (var item in team)
            {
                if (item.GetType() == typeof(Commercial))
                {
                    Console.WriteLine("Matricule : {0}, Nom : {1}, Prenom : {2}, Chiffre d'affaire : {3}, Commission : {4}", item.Matricule, item.Nom, item.Prenom, ((Commercial)item).ChiffreAffaire, ((Commercial)item).Commission);
                }
                else
                {
                    Console.WriteLine("Matricule : {0}, Nom : {1}, Prenom : {2}", item.Matricule, item.Nom, item.Prenom);
                }
            }
            Console.ReadLine();
        }
        static void Save(string type)
        {
            team.Clear();
            if (team.Count == 0)
            {
                team.Add(new Salarie() { Nom = "Bachelet", Prenom = "Damien", Matricule = "00XXX00", SalaireBrut = 1200m, TauxCS = 0.4m, DateNaissance = new DateTime(1986, 10, 13) });
                team.Add(new Salarie() { Nom = "Dylan", Prenom = "Bob", Matricule = "00BOB00" });
                team.Add(new Salarie() { Nom = "Marley", Prenom = "Bob", Matricule = "01BOB01" });
                team.Add(new Salarie() { Nom = "Muray", Prenom = "Bill", Matricule = "00BIL00" });
                team.Add(new Commercial() { Nom = "Moran", Prenom = "Bob", Matricule = "00BIL00", SalaireBrut = 1200m, TauxCS = 0.4m, DateNaissance = new DateTime(1986, 10, 13), ChiffreAffaire = 0.5m, Commission = 0.4m });
            }
            switch (type)
            {
                case "Xml": team.SaveXml(); break;
                case "Bin": team.SaveBinary(); break;
                case "Json": team.SaveJson(); break;
                case "Txt": team.SaveTxt(); break;
            }
            Console.ReadLine();
        }
        #endregion

        #region [Créa|Mod|Supp]
        static Salarie creationSalarie()
        {
            Salarie s = new Salarie();
            do
            {
                Console.Clear();
                Console.Write("Entrez un matricule valide : ");
                s.Matricule = Console.ReadLine();
            } while (s.Matricule == string.Empty);
            do
            {
                Console.Clear();
                Console.Write("Entrez un nom valide : ");
                s.Nom = Console.ReadLine();
            } while (s.Nom == string.Empty);
            do
            {
                Console.Clear();
                Console.Write("Entrez un prénom valide : ");
                s.Prenom = Console.ReadLine();
            } while (s.Prenom == string.Empty);
            return s;
        }
        static void modificationSalarie()
        {
            Salarie s = team[selectionSalaries()];
            do
            {
                Console.Clear();
                Console.WriteLine(s.Matricule);
                Console.Write("Entrez un matricule valide : ");
                s.Matricule = Console.ReadLine();
            } while (s.Matricule == string.Empty);
            do
            {
                Console.Clear();
                Console.WriteLine(s.Nom);
                Console.Write("Entrez un nom valide : ");
                s.Nom = Console.ReadLine();
            } while (s.Nom == string.Empty);
            do
            {
                Console.Clear();
                Console.WriteLine(s.Prenom);
                Console.Write("Entrez un prénom valide : ");
                s.Prenom = Console.ReadLine();
            } while (s.Prenom == string.Empty);
        }
        static int selectionSalaries()
        {
            int i = 0;
            foreach (var item in team)
            {
                if (item.GetType() == typeof(Commercial))
                {
                    Console.WriteLine(i+" : Matricule : {0}, Nom : {1}, Prenom : {2}, Chiffre d'affaire : {3}, Commission : {4}", item.Matricule, item.Nom, item.Prenom, ((Commercial)item).ChiffreAffaire, ((Commercial)item).Commission);
                }
                else
                {
                    Console.WriteLine(i + " : Matricule : {0}, Nom : {1}, Prenom : {2}", item.Matricule, item.Nom, item.Prenom);
                }
                i++;
            }
            return int.Parse(Console.ReadLine());
        }
        static void suppressionSalarie()
        {
            Salarie s = team[selectionSalaries()];
            team.Remove(s);
        }
        #endregion
    }
}
