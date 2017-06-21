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
        public FrmMain()
        {
            InitializeComponent();
            _frm_User.MdiParent = this;

            DialogResult result = _dial.ShowDialog(this);
        }

        private void menu_gestUtilisateurs_Click(object sender, EventArgs e)
        {
            _frm_User.Show();
        }
    }
}
