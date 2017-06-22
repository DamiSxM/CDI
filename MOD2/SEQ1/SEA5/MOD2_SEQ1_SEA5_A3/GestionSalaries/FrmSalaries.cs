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
                    break;
                case Contextes.Consultation:
                    btnNouveau.Enabled = true;
                    gbDetailSalarie.Visible = true;
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
                    break;
                case Contextes.AjoutInitial:
                    break;
                case Contextes.AjoutValider:
                    break;
                default:
                    break;
            }
        }
        private void ChargerValeursSalaries()
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
        private void FrmSalaries_Load(object sender, EventArgs e)
        {
            ChargerValeursSalaries();
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

        private void btnAnnuler_Click(object sender, EventArgs e)
        {
            GestionnaireContextes(Contextes.ModificationAnnuler);
        }

        private void btnSupprimer_Click(object sender, EventArgs e)
        {
            switch (MessageBox.Show("Voulez-vous vraiment supprimer le salarié matricule : " + salarie.Matricule, "Attention !", MessageBoxButtons.OKCancel))
            {
                case DialogResult.OK:
                    break;
                case DialogResult.Cancel:
                    break;
            }
        }
    }
}
