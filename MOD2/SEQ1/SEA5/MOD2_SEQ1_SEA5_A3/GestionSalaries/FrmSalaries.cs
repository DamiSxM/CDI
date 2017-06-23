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
    public partial class FrmSalaries : Form
    {
        Salaries salaries;
        Salarie salarie;
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
        public FrmSalaries()
        {
            InitializeComponent();
        }
        void GestionnaireContextes(Contextes contexte)
        {
            switch (contexte)
            {
                case Contextes.Initial:
                    cbSalaries.Text = "";
                    cbSalaries.Enabled = (cbSalaries.Items.Count > 0);
                    btnNouveau.Enabled = true;
                    gbDetailSalarie.Visible = false;

                    btnAnnuler.Click += new EventHandler(btnAnnulerModification_Click);
                    btnAnnuler.Click -= new EventHandler(btnAnnulerAjout_Click);
                    btnSupprimer.Enabled = false;
                    break;
                case Contextes.Consultation:
                    btnSupprimer.Enabled = true;
                    btnNouveau.Enabled = true;
                    gbDetailSalarie.Visible = true;
                    cbSalaries.Enabled = true;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = true;
                    btnAnnuler.Enabled = false;
                    btnValider.Enabled = false;
                    txtMatricule.ReadOnly = true;
                    txtNom.ReadOnly = true;
                    txtPrenom.ReadOnly = true;
                    txtBDay.ReadOnly = true;
                    txtSalaireBrut.ReadOnly = true;
                    txtTauxCS.ReadOnly = true;
                    break;
                case Contextes.ModificationInitiale:
                    btnValider.Click += new EventHandler(btnValiderModification_Click);
                    btnValider.Click -= new EventHandler(btnValiderAjout_Click);
                    btnAnnuler.Click += new EventHandler(btnAnnulerModification_Click);
                    btnAnnuler.Click -= new EventHandler(btnAnnulerAjout_Click);
                    btnSupprimer.Enabled = false;
                    btnNouveau.Enabled = false;
                    gbDetailSalarie.Visible = true;
                    cbSalaries.Enabled = false;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    txtMatricule.ReadOnly = true;
                    txtNom.ReadOnly = false;
                    txtPrenom.ReadOnly = false;
                    txtBDay.ReadOnly = false;
                    txtSalaireBrut.ReadOnly = false;
                    txtTauxCS.ReadOnly = false;
                    break;
                case Contextes.ModificationAnnuler:
                    GestionnaireContextes(Contextes.Consultation);
                    break;
                case Contextes.ModificationValider:
                    ChargerValeursSalarie();
                    GestionnaireContextes(Contextes.Consultation);
                    break;
                case Contextes.AjoutInitial:
                    btnValider.Click -= new EventHandler(btnValiderModification_Click);
                    btnValider.Click += new EventHandler(btnValiderAjout_Click);
                    btnAnnuler.Click -= new EventHandler(btnAnnulerModification_Click);
                    btnAnnuler.Click += new EventHandler(btnAnnulerAjout_Click);
                    btnSupprimer.Enabled = false;
                    btnNouveau.Enabled = false;
                    gbDetailSalarie.Visible = true;
                    cbSalaries.Enabled = false;
                    pnlBoutons.Enabled = true;
                    btnModifier.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    txtMatricule.ReadOnly = false;
                    txtMatricule.Text = "";
                    txtNom.ReadOnly = false;
                    txtNom.Text = "";
                    txtPrenom.ReadOnly = false;
                    txtPrenom.Text = "";
                    txtBDay.ReadOnly = false;
                    txtBDay.Text = "JJ/MM/AAAA";
                    txtSalaireBrut.ReadOnly = false;
                    txtSalaireBrut.Text = "";
                    txtTauxCS.ReadOnly = false;
                    txtTauxCS.Text = "";
                    break;
                case Contextes.AjoutValider:
                    cbSalaries.Items.Clear();
                    ChargerSalaries();
                    GestionnaireContextes(Contextes.Initial);
                    break;
                default:
                    break;
            }
        }
        
        private void ChargerSalaries()
        {
            salaries = new Salaries();
            ISauvegarde serialiseur = MonApplication.DispositifSauvegarde;
            salaries.Load(serialiseur, Properties.Settings.Default.AppData);
            foreach (Salarie s in salaries)
            {
                cbSalaries.Items.Add(s.Matricule);
            }
        }
        private void ChargerValeursSalarie()
        {
            txtMatricule.Text = salarie.Matricule;
            txtNom.Text = salarie.Nom;
            txtPrenom.Text = salarie.Prenom;
            txtBDay.Text = salarie.DateNaissance.ToShortDateString();
            txtSalaireBrut.Text = salarie.SalaireBrut.ToString();
            txtTauxCS.Text = salarie.TauxCS.ToString();
        }


        private void ModifierSalarie()
        {
            if (IsValidChamps())
            {
                try
                {
                    salarie.Matricule = txtMatricule.Text;
                    salarie.Nom = txtNom.Text;
                    salarie.Prenom = txtPrenom.Text;
                    salarie.DateNaissance = DateTime.Parse(txtBDay.Text);
                    salarie.SalaireBrut = decimal.Parse(txtSalaireBrut.Text);
                    salarie.TauxCS = decimal.Parse(txtTauxCS.Text);
                    
                    salaries.Save(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.Message);
                    // a programmer
                }


            }
        }
        private void AjoutSalarie()
        {
            if (IsValidChamps())
            {
                try
                {
                    salarie = new Salarie();
                    salarie.Matricule = txtMatricule.Text;
                    salarie.Nom = txtNom.Text;
                    salarie.Prenom = txtPrenom.Text;
                    salarie.DateNaissance = DateTime.Parse(txtBDay.Text);
                    salarie.SalaireBrut = decimal.Parse(txtSalaireBrut.Text);
                    salarie.TauxCS = decimal.Parse(txtTauxCS.Text);
                    salaries.Add(salarie);
                    
                    salaries.Save(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.Message);
                    // a programmer
                }


            }
        }

        private void SupprimerSalarie()
        {
            salaries.Remove(salarie);
            salaries.Save(MonApplication.DispositifSauvegarde, Properties.Settings.Default.AppData);
        }

        private bool IsValidChamps()
        {
            bool valid = true;

            if (!Salarie.IsMatriculeValide(txtMatricule.Text))
            {
                valid = false;
                epSalarie.SetError(txtMatricule, "Le matricule n'est pas valide");

            }
            else epSalarie.SetError(txtMatricule, string.Empty);

            // A terminer

            return valid;
        }


        private void FrmSalaries_Load(object sender, EventArgs e)
        {
            ChargerSalaries();
            GestionnaireContextes(Contextes.Initial);
        }
        private void cbSalaries_SelectedIndexChanged(object sender, EventArgs e)
        {
            salarie = salaries.ExtraireSalarie(cbSalaries.Items[cbSalaries.SelectedIndex].ToString());
            ChargerValeursSalarie();
            GestionnaireContextes(Contextes.Consultation);
        }
        private void btnModifier_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.ModificationInitiale);
        }

        private void btnAnnulerModification_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.ModificationAnnuler);
        }
        private void btnAnnulerAjout_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.Initial);
        }

        private void btnSupprimer_Click(object sender, EventArgs e)
        {
            switch (MessageBox.Show("Voulez-vous vraiment supprimer le salarié matricule : " + salarie.Matricule, "Attention !", MessageBoxButtons.OKCancel))
            {
                case DialogResult.OK:
                    SupprimerSalarie();
                    GestionnaireContextes(Contextes.AjoutValider);
                    break;
                case DialogResult.Cancel:
                    break;
            }
        }

        private void btnValiderModification_Click(object sender, EventArgs e)
        {
            ModifierSalarie();
            GestionnaireContextes(Contextes.ModificationValider);
        }
        private void btnValiderAjout_Click(object sender, EventArgs e)
        {
            AjoutSalarie();
            GestionnaireContextes(Contextes.AjoutValider);
        }

        private void btnNouveau_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.AjoutInitial);
        }
    }
}
