using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GestionSalaraies
{
    public partial class FrmMain : Form
    {
        DialConnexion _dial = new DialConnexion();
        FrmUtilisateurs _frm_User = new FrmUtilisateurs();
        FrmSalaries _frm_Salarie = new FrmSalaries();

        public FrmMain()
        {
            InitializeComponent();
            _frm_User.MdiParent = this;
            _frm_Salarie.MdiParent = this;
        }

        #region Bouttons : Events
        private void menu_gestUtilisateurs_Click(object sender, EventArgs e)
        {
            try
            {
                _frm_User.WindowState = FormWindowState.Maximized;
                _frm_User.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Gestion Utilisateur : " + ex.Message);
            }
        }
        private void menu_gestSalaries_Click(object sender, EventArgs e)
        {
            try
            {
                _frm_Salarie.WindowState = FormWindowState.Maximized;
                _frm_Salarie.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Gestion Salarié : " + ex.Message);
            }
        }
        #endregion

        #region Form : Events
        private void FrmMain_Shown(object sender, EventArgs e)
        {
            switch (_dial.ShowDialog(this))
            {
                case DialogResult.OK:
                    MessageBox.Show("Bienvenue " + MonApplication.UtilisateurConnecte.Nom);
                    break;
                case DialogResult.Cancel:
                    Close();
                    break;
            }
        }
        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = false;
        }
        #endregion
    }
}
