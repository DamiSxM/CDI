using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace A001
{
    public partial class FrmMain : Form
    {

        SqlConnection sqlConnection = null;
        FrmConnexion frmConnexion;
        FrmCommande frmCommande;
        FrmLectureDonnees frmLectureDonnees;


        public FrmMain()
        {
            InitializeComponent();
            sqlConnection = new SqlConnection(Properties.Settings.Default.ADO_NetConnectionString);
        }

        private void connexionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmConnexion == null)
            {
                frmConnexion = new FrmConnexion();
                frmConnexion.sqlConnection = sqlConnection;
                frmConnexion.MdiParent = this;
                frmConnexion.Show();
            }
            else frmConnexion.Activate();
        }

        private void commandeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmCommande == null)
            {
                frmCommande = new FrmCommande();
                frmCommande.sqlConnection = sqlConnection;
                frmCommande.MdiParent = this;
                frmCommande.Show();
            }
            else frmCommande.Activate();
        }

        private void lectureDonnéesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmLectureDonnees == null)
            {
                frmLectureDonnees = new FrmLectureDonnees();
                frmLectureDonnees.sqlConnection = sqlConnection;
                frmLectureDonnees.MdiParent = this;
                frmLectureDonnees.Show();
            }
            else frmLectureDonnees.Activate();
        }
    }
}
