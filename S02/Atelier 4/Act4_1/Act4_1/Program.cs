using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Act4_1
{
    class Program
    {
        const int SEUIL_MAJO_SAL = 1800;
        const double MAJO_BAS_SAL = 0.1;
        const double TX_CELIB = 0.2;
        const double TX_N_CELIB = 0.25;
        const double TX_PAR_ENFANT = 0.15;
        const double TX_MAX = 0.5;
        
        static void Main(string[] args)
        {
            do
            {
                int nombreEnfants = 0;
                bool estCelib = false, remunInfSeuil = false, Arreter = false;
                double txParticipation = 0.0;

                init(ref nombreEnfants, ref estCelib, ref remunInfSeuil);
                txParticipation = calculs(nombreEnfants, estCelib, remunInfSeuil);

                Console.WriteLine("Le taux de participation est {0}% ", (txParticipation * 100));
            } while (encore());
                        
        }
        

        static double calculs(int nombreEnfants, bool estCelib, bool remunInfSeuil)
        {
            double tx_par = 0.0;

            if (estCelib) tx_par = TX_CELIB;
            else tx_par = TX_N_CELIB;

            tx_par += nombreEnfants * TX_PAR_ENFANT;

            if (remunInfSeuil) tx_par += MAJO_BAS_SAL;

            if (tx_par > TX_MAX) tx_par = TX_MAX;

            return tx_par;
        }

        static bool encore()
        {
            bool loop = true;
            do
            {
                Console.Write("Souhaitez-vous traiter un autre salarié ? (oui/non) : ");
                string res = Console.ReadLine();
                if (res == "oui" || res == "non")
                {
                    if (res == "oui") return true;
                    return false;
                }
            } while (loop);
            return false;
        }

        static void init(ref int nombreEnfants, ref bool estCelib, ref bool remunInfSeuil)
        {
            bool loop = true;
            do
            {
                Console.Write("L'employé est-il célibataire ? (oui/non) : ");
                string res = Console.ReadLine();
                if(res == "oui" || res == "non")
                {
                    estCelib = true;
                    loop = false;
                }
            } while (loop);

            loop = true;
            do
            {
                Console.Write("Nombre d’enfants de l’employé ? : ");
                int res;
                if (int.TryParse(Console.ReadLine(), out res)) // Si int
                {
                    if (res >= 0)
                    {
                        nombreEnfants = res;
                        loop = false;
                    }
                }
            } while (loop);

            loop = true;
            do
            {
                Console.Write("Le salaire de l’employé est-il inférieur à {0} euros ? (oui/non) : ", SEUIL_MAJO_SAL);
                string res = Console.ReadLine();
                if (res == "oui" || res == "non")
                {
                    if (res == "oui") remunInfSeuil = true;
                    loop = false;
                }
            } while (loop);

        }

        // fonction isEntier

        // fonction isOuiNon
 
    }
}
