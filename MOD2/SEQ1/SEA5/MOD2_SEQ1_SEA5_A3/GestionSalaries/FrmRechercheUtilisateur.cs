using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SalariesDll;

namespace GestionSalaraies
{
    public partial class FrmRechercheUtilisateur : Form
    {
        Utilisateurs _utilisateurs;
        string _NomUtilisateur = "";
        string _IdUtilisateur = "";
        Utilisateur _utilisateur;
        public FrmRechercheUtilisateur()
        {
            InitializeComponent();
            //RechercheUtilisateur("");
        }

        void RechercheUtilisateur(string recherche)
        {
            lstRecherche.Items.Clear();
            foreach (Utilisateur u in _utilisateurs.UtilisateurByDebutNom(recherche))
            {
                //ListBoxItem item = new ListBoxItem();
                lstRecherche.Items.Add(u.Nom);
            }
        }

        #region Assesseurs
        public Utilisateurs Utilisateurs
        {
            get { return _utilisateurs; }
            set { _utilisateurs = value; }
        }
        public string NomUtilisateur
        {
            get { return _NomUtilisateur; }
        }

        public string IdUtilisateur
        {
            get
            {
                return _IdUtilisateur;
            }

            set
            {
                _IdUtilisateur = value;
            }
        }
        #endregion

        private void txtRecherche_TextChanged(object sender, EventArgs e)
        {
            RechercheUtilisateur(txtRecherche.Text);
        }

        private void btnValider_Click(object sender, EventArgs e)
        {
            if (lstRecherche.SelectedIndex != -1)
            {
                //_utilisateurs.

                foreach (Utilisateur u in _utilisateurs)
                {
                    if (lstRecherche.Items[lstRecherche.SelectedIndex].ToString() == u.Nom)
                    {
                        _IdUtilisateur = u.Identifiant;
                    }
                }

                //_NomUtilisateur = lstRecherche.Items[lstRecherche.SelectedIndex].ToString();
            }
            Close();
        }

        private void btnAnnuler_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
