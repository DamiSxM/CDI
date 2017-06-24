using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using SalariesDll;
using Utilitaires;

namespace GestionSalaraies 
{
    public partial class DialConnexion : Form
    {
        Utilisateurs _Users = new Utilisateurs();
        public DialConnexion()
        {
            InitializeComponent();
            _Users.Load(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
            AcceptButton = btnConnexion;
            CancelButton = btnQuitter;
        }

        #region Gestionnaires Evenements Validation

        /// <summary>
        /// Validation ID Utilisateur
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtIdentifiant_Validating(object sender, CancelEventArgs e)
        {
            if(Utilisateur.IsIdentifiantValide(txtIdentifiant.Text))
            {
                epUtilisateur.SetError(txtIdentifiant, String.Empty);
            }
            else
            {
                epUtilisateur.SetError(txtIdentifiant, "Identifiant invalide");
                e.Cancel = true;
            }

        }
        /// <summary>
        /// Interception du traitement de la touche
        /// Assignation de dialogResult Cancel sur Escap
        /// </summary>
        /// <param name="keyData"></param>
        /// <returns></returns>
        protected override bool ProcessDialogKey(Keys keyData)
        {
            if (keyData == Keys.Escape) this.DialogResult = DialogResult.Cancel;
            return base.ProcessDialogKey(keyData);
        }
        /// <summary>
        /// Vérification du mot de passe
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtMDP_Validating(object sender, CancelEventArgs e)
        {
            if(Utilisateur.IsMotPasseValide(txtMDP.Text))
                epUtilisateur.SetError(txtMDP, String.Empty);
            else
            {
                epUtilisateur.SetError(txtMDP, "Mot de passe incorrect");
                e.Cancel = true;
            }

        }
        #endregion

        private void btnQuitter_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void btnConnexion_Click(object sender, EventArgs e)
        {
            MonApplication.UtilisateurConnecte = _Users.UtilisateurByMatricule(txtIdentifiant.Text);
            if (MonApplication.UtilisateurConnecte != null)
            {
                switch (MonApplication.UtilisateurConnecte.Connecter(txtMDP.Text))
                {
                    case ConnectionResult.Connecté:
                        MonApplication.UtilisateurConnecte.NombreEchecsConsecutifs = 0;
                        _Users.Save(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
                        DialogResult = DialogResult.OK;
                        break;
                    case ConnectionResult.MotPasseInvalide:
                        epUtilisateur.SetError(btnConnexion, "Connexion non valide");
                        DialogResult = DialogResult.None;
                        break;
                    case ConnectionResult.CompteBloqué:
                        MonApplication.UtilisateurConnecte.NombreEchecsConsecutifs = 0;
                        MonApplication.UtilisateurConnecte.CompteBloque = true;
                        _Users.Save(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
                        MessageBox.Show("Le compte a été bloqué");
                        DialogResult = DialogResult.None;
                        break;
                    case ConnectionResult.PasAdmin:
                        MessageBox.Show("Le compte n'est pas un compte Administrateur");
                        DialogResult = DialogResult.None;
                        break;
                    default:
                        DialogResult = DialogResult.None;
                        break;
                }
            }
            else
            {
                epUtilisateur.SetError(btnConnexion, "Connexion non valide");
                DialogResult = DialogResult.None;
            }

        }

        /*private bool IsIdCorrect(string id)
        {
            if (String.IsNullOrEmpty(id)) return false;
            if (!char.IsLetter(id[0])) return false;
            if (id.Length < 3) return false;
            return true;
        }

        private bool IsMotPasseCorrect(string motPasse, string id)
        {
            if (String.IsNullOrEmpty(motPasse)) return false;
            if (motPasse.Length < 5) return false;
            return (motPasse == id);
        }*/


    }
}

