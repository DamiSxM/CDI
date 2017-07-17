using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using Banque;

namespace BanqueWindowsGUI

{
    /// <summary>
    /// Création d'un nouveau compte  externe à la banque
    /// </summary>
    public partial class FrmNouveauCompte : Form
    {
        Compte nouveauCompte;
        public FrmNouveauCompte()
        {
            InitializeComponent();
        }

        public FrmNouveauCompte(Compte compte) : this()
        {
            nouveauCompte = compte;
        }

        private void FrmNouveauCompte_Load(object sender, EventArgs e)
        {

        }

        private void btnValider_Click(object sender, EventArgs e)
        {
            if (ValidateChildren())
                DialogResult = DialogResult.OK;
            else
                DialogResult = DialogResult.None;
        }

        private void btnAbandonner_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        /// <summary>
        /// Test de chaine vide
        /// </summary>
        /// <param name="s"></param>
        /// <returns>renvoi TRUE si la chaine s est vide</returns>
        bool InputEstVide(string s)
        {
            return s == "";
        }
        /// <summary>
        /// Test chaine regex
        /// </summary>
        /// <param name="s">chaine à tester</param>
        /// <param name="regex">chaine de test</param>
        /// <returns>renvoi TRUE si la chaine s est valide à la regex</returns>
        bool InputTestRegex(string s, string regex)
        {
            return new System.Text.RegularExpressions.Regex(@regex).IsMatch(s);
        }
        /// <summary>
        /// Test longueur chaine
        /// </summary>
        /// <param name="s">chaine à tester</param>
        /// <param name="nb">nombre de longeur limite [</param>
        /// <returns>envoi TRUE si la chaine s est de longueur plus grande que le nombre nb</returns>
        bool InputSupperieur(string s, int nb)
        {
            return s.Length > nb;
        }
        /// <summary>
        /// Test de calcul d'un RIB
        /// </summary>
        /// <param name="s">Chaine à tester</param>
        /// <param name="codeBanque">Chaine du code banque</param>
        /// <param name="codeGuichet">Chine du code guichet</param>
        /// <param name="numeroCompte">Chaine du numéro de compte</param>
        /// <returns>renvoi TRUE si une chaine s est un RIB invalide</returns>
        bool InputCalculRibInvalide(string s, string codeBanque, string codeGuichet, string numeroCompte)
        {
            string numeroCompteTranscode = "";
            foreach (char c in numeroCompte)
            {
                int sortie;
                if (int.TryParse(c.ToString(), out sortie))
                    numeroCompteTranscode += sortie.ToString();         // Si c'est un chiffre
                else if (Banque.Hollerith.Transcoder(c, out sortie))
                    numeroCompteTranscode += sortie.ToString();         // Si c'est un texte valide
                else return false;                                      // Sinon ça vaut pas le coup de continuer
            }
            int _codeBanque = int.Parse(codeBanque) % 97;
            int _codeGuichet = int.Parse(_codeBanque.ToString() + codeGuichetTextBox.Text) % 97;
            long _numeroCompte = long.Parse(_codeGuichet.ToString() + numeroCompteTranscode) % 97;
            int calculRIB = (int)(_numeroCompte * 100) % 97;
            int numeroRIB = 97 - calculRIB;

            return s != numeroRIB.ToString();
        }
        /// <summary>
        /// Validation des TextBox CodeBanque et CodeGuichet
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Validation_CodeBanque_Et_CodeGuichet(object sender, CancelEventArgs e)
        {
            Control sndr = (sender as Control);
            ep.SetError(sndr, string.Empty);

            string s = sndr.Text;

            if (InputEstVide(s) || InputTestRegex(s, "^[a-zA-Z]+$") || InputSupperieur(s, 5))
            {
                ep.SetError(sndr, "Règle de validation :\nObligatoire, que des chiffres et longeur de 5 maxi");
                e.Cancel = true;
            }
            else if (s.Length < 5) sndr.Text = s.PadLeft(5, '0'); 
        }
        /// <summary>
         /// Validation du TextBox NumeroDeCompte
         /// </summary>
         /// <param name="sender"></param>
         /// <param name="e"></param>
        private void Validation_NumeroDeCompte(object sender, CancelEventArgs e)
        {
            Control sndr = (sender as Control);
            ep.SetError(sndr, string.Empty);

            string s = sndr.Text;

            if (InputEstVide(s) || !InputTestRegex(s, "^[0-9a-zA-Z]+$") || InputSupperieur(s, 11))
            {
                ep.SetError(sndr, "Règle de validation :\nObligatoire, chiffres et lettres de A à Z et longeur de 11 maxi");
                e.Cancel = true;
            }
            else if (s.Length < 11) sndr.Text = s.PadLeft(11, '0').ToUpper();
        }
        /// <summary>
        /// Validation du TextBox CleDeControle
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Validation_CleDeControle_RIB(object sender, CancelEventArgs e)
        {
            Control sndr = (sender as Control);
            ep.SetError(sndr, string.Empty);

            string s = sndr.Text;

            if (InputEstVide(s) || InputCalculRibInvalide(s, codeBanqueTextBox.Text, codeGuichetTextBox.Text, numeroCompteTextBox.Text))
            {
                ep.SetError(sndr, "Règle de validation :\nObligatoire, doit correspondre au calcul du code RIB");
                e.Cancel = true;
            }

        }
        /// <summary>
        /// Validation du TextBox LibelleCompte
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Validation_LibelleCompte(object sender, CancelEventArgs e)
        {
            Control sndr = (sender as Control);
            ep.SetError(sndr, string.Empty);

            bool InputEstVide = sndr.Text == "";
            if (InputEstVide)
            {
                ep.SetError(sndr, "Règle de validation :\nObligatoire");
                e.Cancel = true;
            }
        }
    }
}
