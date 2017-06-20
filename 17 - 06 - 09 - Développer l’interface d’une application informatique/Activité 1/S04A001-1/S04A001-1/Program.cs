using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;

namespace S04A001_1
{
    class Program
    {
        static ArrayList al = new ArrayList();
        static void Main(string[] args)
        {
            CreerListeHeteroclite();
            affichageProprietes();

            Console.ReadLine();
        }

        static void CreerListeHeteroclite()
        {
            al.Add(0.1m);
            al.Add(1);
            al.Add('a');
            al.Add("abc");
            al.Add(new Salarie() { Nom = "Bachelet" });
            al.Add(new Salarie() { Nom = "Bacheleto" });
            al.Add(new Commercial() {Nom = "Bacheleto", Commission = 0.4m});
        }
        static void affichageProprietes()
        {
            foreach (object o in al)
            {
                if (o.GetType() == typeof(decimal)) Console.WriteLine("C'est un decimal : {0}", (decimal)o);
                if (o.GetType() == typeof(int)) Console.WriteLine("C'est un int : {0}", (int)o);
                if (o.GetType() == typeof(char)) Console.WriteLine("C'est un char : {0}", (char)o);
                if (o.GetType() == typeof(string)) Console.WriteLine("C'est un string : {0}", (string)o);
                if (o.GetType() == typeof(Salarie)) Console.WriteLine("C'est un Salarie : {0}", ((Salarie)o).Nom);
                if (o.GetType() == typeof(Commercial)) Console.WriteLine("C'est un Commercial : {0} - {1}", ((Commercial)o).Nom, ((Commercial)o).Commission);
            }
        }
    }
}
