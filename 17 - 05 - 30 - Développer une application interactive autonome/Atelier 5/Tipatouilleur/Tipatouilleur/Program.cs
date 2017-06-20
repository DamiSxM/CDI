using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tipatouilleur
{
    class Program
    {
        static int testA(int a) { return a + 1; }
        static int testB(int b) { return b + 2; }
        //static const int[] TABLEAU = {52, 10, 1, 25, 62, 3, 8, 55, 3, 23};
        static void Main(string[] args)
        {
            //int[] tab = { 52, 10, 1, 25, 62, 3, 8, 55, 3, 23 };
            //tab = randomGenerator();

            char selection = 'f';
            do
            {
                selection = afficherChoix();
                if (selection != 'F')
                {
                    selectionTri(selection/*, tab*/);
                    Console.ReadLine();
                }
            } while (selection != 'F');
        }

        // afficher la liste
        static char afficherChoix()
        {
            char selection = 'f';
            string choix = "BCPSF";
            do
            {
                do
                {
                    Console.Clear();
                    Console.WriteLine("Exercices d'Algorithique Tris");
                    Console.WriteLine("------------------------");
                    Console.WriteLine("Tapez B pour effectuer le Tri Bulle");
                    Console.WriteLine("Tapez C pour effectuer le Tri par Comptage");
                    Console.WriteLine("Tapez P pour effectuer le Tri par Permutation");
                    Console.WriteLine("Tapez S pour effectuer le Tri par Sélection");
                    Console.WriteLine("Tapez F pour sortir du programme");
                    Console.Write("\n\t");

                } while (!char.TryParse(Console.ReadLine().ToUpper(), out selection)); //Si char
            } while (choix.IndexOf(selection) == -1); //Si dans le choix
            Console.Clear();
            return selection;
        }

        static void selectionTri(char a/*, int[] tabO*/) // tri selection via switch
        {
            int[] tab = randomGenerator(); //(int[])tabO.Clone();
            switch (a)
            {
                case 'B':
                    Console.WriteLine("Tri Bulle");
                    Console.WriteLine("------------------------");
                    triBulle2Dami(tab);
                    break;
                case 'C':
                    Console.WriteLine("Tri par Comptage");
                    Console.WriteLine("------------------------");
                    triComptage(tab);
                    break;
                case 'P':
                    Console.WriteLine("Tri par Permutation");
                    Console.WriteLine("------------------------");
                    triPermutation(tab);
                    break;
                case 'S':
                    Console.WriteLine("Tri par Sélection");
                    Console.WriteLine("------------------------");
                    triSelection(tab);
                    break;
                case 'F':
                    Console.WriteLine("Quitter Programme");
                    Console.WriteLine("------------------------");
                    break;
                default: break;
            }
        }

        static int[] randomGenerator()
        {
            Random rdm = new Random();
            int[] tab = new int[rdm.Next(3, 10)];
            for (int i = 0; i < tab.Length; i++)
            {
                tab[i] = rdm.Next(1, 100);
            }
            return tab;
        }

        static void afficherTab(int[] tab) // Afficher tab 
        {
            foreach (var nb in tab)
            {
                Console.Write(nb + "\t");
            }
            Console.Write("\n");
        }

        // Les Tris
        static void triBulle(int[] tab) // ??
        {
            afficherTab(tab);
            bool inversion;
            int tmp;
            do
            {
                inversion = false;
                for (int i = 0; i < tab.Length - 1; i++)
                {
                    if (tab[i] > tab[i + 1])
                    {
                        tmp = tab[i];
                        tab[i] = tab[i + 1];
                        tab[i + 1] = tmp;
                        inversion = true;
                        afficherTab(tab);
                    }
                }
            } while (!inversion);
        }
        static void triBulle2Dami(int[] tab) // OOKK
        {
            afficherTab(tab);
            bool hasBeenSwitched;
            do
            {
                hasBeenSwitched = false;
                for (int i = 0; i < tab.Length - 1; i++)
                {
                    if (i < tab.Length - 1)
                    {
                        if (tab[i] > tab[i + 1])
                        {
                            int tmp = tab[i];
                            tab[i] = tab[i + 1];
                            tab[i + 1] = tmp;
                            hasBeenSwitched = true;
                            afficherTab(tab);
                        }
                    }
                }
            } while (hasBeenSwitched);
        }
        static void triBulle3(int[] tab) // ??
        {
            afficherTab(tab);
            int i, tmp, dernier_inver, lng = tab.Length;
            while (lng > 1)
            {
                dernier_inver = 0;
                i = 0;
                do
                {
                    if (tab[i] > tab[i + 1])
                    {
                        tmp = tab[i];
                        tab[i] = tab[i + 1];
                        tab[i + 1] = tmp;
                        dernier_inver = i;
                    }
                    i++;
                } while (!(i == lng - 1));
                lng = dernier_inver;
                afficherTab(tab);
            }
        }

        static void triSelection(int[] tab) // OK
        {
            afficherTab(tab);
            int mini, posmini;

            for (int i = 0; i < tab.Length - 1; i++)
            {
                mini = tab[i];
                posmini = i;
                for (int j = i + 1; j < tab.Length; j++)
                {
                    if (tab[j] < mini)
                    {
                        mini = tab[j];
                        posmini = j;
                    }
                }
                for (int j = posmini; j >= i + 1; j--)
                {
                    tab[j] = tab[j - 1];
                }
                tab[i] = mini;
                afficherTab(tab);
            }
        }
        static void triComptage(int[] tab) // OK
        {
            afficherTab(tab);
            int posResult;
            int[] resultat = new int[tab.Length];

            for (int i = 0; i <= tab.Length - 1; i++)
            {
                posResult = 0;
                for (int j = 0; j <= tab.Length - 1; j++)
                {
                    if (tab[j] < tab[i]) posResult++;
                }
                while (resultat[posResult] == tab[i])
                {
                    posResult++;
                }
                resultat[posResult] = tab[i];
                afficherTab(resultat);
            }
        }
        static void triPermutation(int[] tab) // OK
        {
            afficherTab(tab);
            int tmp, posdep;
            for (int i = 0; i < tab.Length - 1; i++)
            {
                if (tab[i] > tab[i + 1])
                {
                    tmp = tab[i + 1];
                    posdep = i + 1;
                    do
                    {
                        tab[posdep] = tab[posdep - 1];
                        posdep--;

                    } while (!((posdep == 0) || (tab[posdep - 1] <= tmp)));
                    tab[posdep] = tmp;
                }
                afficherTab(tab);
            }
        }

        static void insort(int[] tab, int proLim = 0)
        {
            int curMin = 0, curMax = tab.Length - 1;
            int pivot = tab[(int)Math.Floor(curMin + curMax / 2.0)];
            while (!(curMin > curMax))
            {
                while (tab[curMin] < pivot)
                {
                    curMin++;
                }
                while (tab[curMax] > pivot)
                {
                    curMax--;
                }
                if (curMin < curMax)
                {
                    int tmp = tab[curMin];
                    tab[curMin] = tab[curMax];
                    tab[curMax] = tmp;
                }
                curMin++;
                curMax--;
            }
            if (curMax > curMin)
            {
                //if (proLim == 1) //faire Heapsort(tab[Min..CurMax])
                //else //insort(tab[Min..CurMax], proLim--);
            }
            if (curMin < curMax)
            {
                //if (proLim == 1) //Heapsort(tab[CurMin..Max])
                //else//insort(tab[curMin..Max], proLim--);
            }
        }
    }
}
