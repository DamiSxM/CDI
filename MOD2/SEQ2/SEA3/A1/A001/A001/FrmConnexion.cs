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
    public partial class FrmConnexion : Form
    {
        public SqlConnection sqlConnection = null;
        public FrmConnexion()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Si la connexion n'existe pas, la créer
        /// et associer un gestionnaire d'événement au changement d'état
        /// Si son état est fermé, ouvrir la connexion  
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnConnecter_Click(object sender, EventArgs e)
        {
            try
            {
                sqlConnection.Open();
            }
            catch (Exception)
            {
                throw;
            }
        }

        private void SqlConnection_StateChange(object sender, StateChangeEventArgs e)
        {
            txtEtatConnexion.Text = e.CurrentState.ToString();
        }

        /// <summary>
        /// Afficher les propriétés 
        /// Database
        /// Datasource
        /// Utilisateur
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnProprietes_Click(object sender, EventArgs e)
        {
            if (sqlConnection != null)
            {
                MessageBox.Show(string.Format("Database : {0}\nDatasource : {1}\nUtilisateur : {2}",
                    sqlConnection.Database,
                    sqlConnection.DataSource,
                    sqlConnection.WorkstationId
                    ));
            }
        }
        /// <summary>
        /// Si l'état de la connexion est ouvert, fermer la connexion
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnDeconnecter_Click(object sender, EventArgs e)
        {
            sqlConnection.Close();
        }

        private void FrmConnexion_Load(object sender, EventArgs e)
        {
            /*sqlConnection = new SqlConnection(Properties.Settings.Default.ADO_NetConnectionString);*/
            sqlConnection.StateChange += SqlConnection_StateChange;
        }
    }
}
