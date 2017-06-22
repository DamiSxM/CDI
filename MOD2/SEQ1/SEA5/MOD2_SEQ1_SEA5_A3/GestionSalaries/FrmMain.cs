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

        private void menu_gestUtilisateurs_Click(object sender, EventArgs e)
        {
            _frm_User.WindowState = FormWindowState.Maximized;
            _frm_User.Show();
        }

        private void menu_gestSalaries_Click(object sender, EventArgs e)
        {
            _frm_Salarie.WindowState = FormWindowState.Maximized;
            _frm_Salarie.Show();
        }

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
    }
}
