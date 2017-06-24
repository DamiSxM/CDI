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
using GestionSalaraies.Properties;
using Utilitaires;


namespace GestionSalaraies
{
    public partial class FrmUtilisateurs : Form
    {
        Utilisateurs utilisateurs;
        Roles roles;
        Utilisateur utilisateur;

        enum Contextes
        {
            Initial = 0,
            Consultation = 1,
            ModificationInitiale = 2,
            ModificationAnnuler = 3,
            ModificationValider = 4,
            AjoutInitial = 5,
            AjoutValider = 6

        }
        public FrmUtilisateurs()
        {
            InitializeComponent();
        }

        void GestionnaireContextes(Contextes contexte)
        {

            switch (contexte)
            {
                case Contextes.Initial:
                    cbUtilisateurs.Enabled = (cbUtilisateurs.Items.Count > 0);
                    btnNouveau.Enabled = true;
                    gbDetailUtilisateur.Visible = false;

                    btnValider.Click += new EventHandler(btnValiderModification_Click);
                    btnAnnuler.Click += new EventHandler(btnAnnulerModification_Click);

                    btnAnnuler.Click -= new EventHandler(btnAnnulerAjout_Click);
                    btnValider.Click -= new EventHandler(btnValiderAjout_Click);
                    break;
                case Contextes.Consultation:
                    btnNouveau.Enabled = true;
                    gbDetailUtilisateur.Visible = true;
                    cbUtilisateurs.Enabled = true;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = true;
                    btnAnnuler.Enabled = false;
                    btnValider.Enabled = false;
                    txtIdentifiant.ReadOnly = true;
                    txtMotDePasse.ReadOnly = true;
                    txtNom.ReadOnly = true;
                    chkCompteBloque.Enabled = false;
                    cbRoles.Enabled = false;
                    break;
                case Contextes.ModificationInitiale:
                    btnNouveau.Enabled = false;
                    gbDetailUtilisateur.Visible = true;
                    cbUtilisateurs.Enabled = false;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    txtIdentifiant.ReadOnly = true;
                    txtMotDePasse.ReadOnly = false;
                    chkCompteBloque.Enabled = true;
                    txtNom.ReadOnly = false;
                    cbRoles.Enabled = true;

                    btnAnnuler.Click += new EventHandler(btnAnnulerModification_Click);
                    btnValider.Click += new EventHandler(btnValiderModification_Click);

                    btnAnnuler.Click -= new EventHandler(btnAnnulerAjout_Click);
                    btnValider.Click -= new EventHandler(btnValiderAjout_Click);
                    break;
                case Contextes.ModificationAnnuler:
                    ChargerValeursUtilisateur();
                    GestionnaireContextes(Contextes.Consultation);
                    break;
                case Contextes.ModificationValider:
                    ChargerValeursUtilisateur();
                    GestionnaireContextes(Contextes.Consultation);
                    break;
                case Contextes.AjoutInitial:
                    btnValider.Click += new EventHandler(btnValiderAjout_Click);
                    btnAnnuler.Click += new EventHandler(btnAnnulerAjout_Click);

                    btnValider.Click -= new EventHandler(btnValiderModification_Click);
                    btnAnnuler.Click -= new EventHandler(btnAnnulerModification_Click);

                    btnNouveau.Enabled = false;
                    gbDetailUtilisateur.Visible = true;
                    cbUtilisateurs.Enabled = false;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    txtIdentifiant.Text = "";
                    txtIdentifiant.ReadOnly = false;
                    txtMotDePasse.Text = "";
                    txtMotDePasse.ReadOnly = false;
                    chkCompteBloque.Checked = false;
                    chkCompteBloque.Enabled = true;
                    txtNom.Text = "";
                    txtNom.ReadOnly = false;
                    cbRoles.Enabled = true;
                    break;
                case Contextes.AjoutValider:
                    cbUtilisateurs.Items.Clear();
                    ChargerUtilisateurs();
                    GestionnaireContextes(Contextes.Initial);
                    break;
                default:
                    break;
            }

        }

        private void AjouterUtilisateur()
        {
            if (IsValidChamps())
            {
                try
                {
                    utilisateur = new Utilisateur();
                    utilisateur.Identifiant = txtIdentifiant.Text;
                    utilisateur.MotDePasse = txtMotDePasse.Text;
                    utilisateur.Nom = txtNom.Text;
                    utilisateur.CompteBloque = chkCompteBloque.Checked;
                    utilisateur.Identifiant = txtIdentifiant.Text;
                    utilisateur.MotDePasse = txtMotDePasse.Text;
                    utilisateur.Role = roles.RechercherRole(cbRoles.SelectedItem.ToString());
                    utilisateurs.Add(utilisateur);

                    ISauvegarde serialiseur = MonApplication.DispositifSauvegarde;
                    utilisateurs.Save(serialiseur, Properties.Settings.Default.AppData);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.Message);
                    // a programmer
                }
            }
        }

        private void ChargerValeursUtilisateur()
        {
            txtIdentifiant.Text = utilisateur.Identifiant;
            txtMotDePasse.Text = utilisateur.MotDePasse;
            txtNom.Text = utilisateur.Nom;
            chkCompteBloque.Checked = utilisateur.CompteBloque;
            foreach (var item in cbRoles.Items)
            {
                if (item.ToString() == utilisateur.Role.Identifiant)
                {
                    cbRoles.SelectedItem = item;
                    break;
                }
            }
        }
        private void ModifierUtilisateur()
        {

            if (IsValidChamps())
            {
                try
                {
                    utilisateurs.Remove(utilisateur);

                    utilisateur = new Utilisateur();
                    utilisateur.Identifiant = txtIdentifiant.Text;
                    utilisateur.MotDePasse = txtMotDePasse.Text;
                    utilisateur.Nom = txtNom.Text;
                    utilisateur.CompteBloque = chkCompteBloque.Checked;
                    utilisateur.Identifiant = txtIdentifiant.Text;
                    utilisateur.MotDePasse = txtMotDePasse.Text;
                    utilisateur.Role = roles.RechercherRole(cbRoles.SelectedItem.ToString());

                    utilisateurs.Add(utilisateur);

                    ISauvegarde serialiseur = MonApplication.DispositifSauvegarde;
                    utilisateurs.Save(serialiseur, Properties.Settings.Default.AppData);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.Message);
                    // a programmer
                }


            }
        }

        private bool IsValidChamps()
        {
            bool valid = true;

            if (!Utilisateur.IsIdentifiantValide(txtIdentifiant.Text))
            {
                valid = false;
                epUtilisateur.SetError(txtIdentifiant, "L'identifiant n'est pas valide");

            }
            else
            {
                epUtilisateur.SetError(txtIdentifiant, string.Empty);
            }



            return valid;
        }

        private void ChargerRoles()
        {
            roles = new Roles();
            ISauvegarde serialiseur = MonApplication.DispositifSauvegarde;
            roles.Load(serialiseur, Properties.Settings.Default.AppData);
            //roles.Load(serialiseur, Properties.Settings.Default.AppData2);

            foreach (Role item in roles)
            {
                cbRoles.Items.Add(item.Identifiant);
            }
        }

        private void ChargerUtilisateurs()
        {
            utilisateurs = new Utilisateurs();
            ISauvegarde serialiseur = MonApplication.DispositifSauvegarde;
            utilisateurs.Load(serialiseur, Properties.Settings.Default.AppData);
            //utilisateurs.Load(serialiseur, Properties.Settings.Default.AppData2);
            foreach (Utilisateur item in utilisateurs)
            {
                cbUtilisateurs.Items.Add(item.Identifiant);
            }
        }

        #region Events
        private void FrmUtilisateurs_Load(object sender, EventArgs e)
        {
            ChargerUtilisateurs();
            ChargerRoles();
            GestionnaireContextes(Contextes.Initial);
        }
        private void FrmUtilisateurs_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;
        }
        #endregion

        private void cbUtilisateurs_SelectedIndexChanged(object sender, EventArgs e)
        {
            utilisateur = utilisateurs.UtilisateurByMatricule(cbUtilisateurs.Items[cbUtilisateurs.SelectedIndex].ToString());
            ChargerValeursUtilisateur();
            GestionnaireContextes(Contextes.Consultation);
        }

        #region Gestion Boutons
        #region Bouton : Modifier
        /// <summary>
        /// Bouton Modifier
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnModifier_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.ModificationInitiale);
        }
        #endregion

        #region Bouton : Annuler
        private void btnAnnulerModification_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.ModificationAnnuler);
        }
        private void btnAnnulerAjout_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.Initial);
        }
        #endregion

        #region Bouton : Valider
        /// <summary>
        /// Bouton Valider (modifications)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnValiderModification_Click(object sender, EventArgs e)
        {
            ModifierUtilisateur();
            GestionnaireContextes(Contextes.ModificationValider);
        }
        /// <summary>
        /// Bouton Valider (ajout)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnValiderAjout_Click(object sender, EventArgs e)
        {
            AjouterUtilisateur();
            GestionnaireContextes(Contextes.AjoutValider);
        }
        #endregion

        #region Bouton : Nouveau
        private void btnNouveau_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.AjoutInitial); ;
        }
        #endregion
        #endregion

    }
}
