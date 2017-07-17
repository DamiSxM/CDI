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
    public partial class FrmCommande : Form
    {
        public SqlConnection sqlConnection = null;
        public FrmCommande()
        {
            InitializeComponent();

            /*sqlConnection = new SqlConnection(Properties.Settings.Default.ADO_NetConnectionString);
            try
            {
                sqlConnection.Open();
            }
            catch (Exception)
            {
                throw;
            }*/
        }
        ~FrmCommande()
        {
            //sqlConnection.Close();
        }

        /// <summary>
        /// Requête exécutée avec la méthode ExecuteNonQuery 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnNonQuery_Click(object sender, EventArgs e)
        {

            SqlCommand sqlCmd = new SqlCommand(txtRequeteNonQuery.Text, sqlConnection);
            try
            {
                int rep = sqlCmd.ExecuteNonQuery();
                txtResultatNonQuery.Text = rep.ToString();
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Requête simple exécutée avec la méthode ExecuteScalar 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSansParametre_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCmd = new SqlCommand("select count(*) from Customers", sqlConnection);
            try
            {
                txtResultatSansParametre.Text = ((int)sqlCmd.ExecuteScalar()).ToString();
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Requête libre exécutée avec la méthode ExecuteScalar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnExecuterTexte_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCmd = new SqlCommand(txtResultatRequeteLibre.Text, sqlConnection);
            try
            {
                txtResultatTexte.Text = ((int)sqlCmd.ExecuteScalar()).ToString();
            }
            catch (Exception)
            {
                throw;
            }
        }
        /// <summary>
        /// Requête avec paramètre exécutée avec la méthode ExecuteScalar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAvecParametre_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCmd = new SqlCommand("select count(*) from Orders where CustomerID = @ID", sqlConnection);
            sqlCmd.Parameters.Add("@ID", SqlDbType.VarChar);
            sqlCmd.Parameters["@ID"].Value = txtCustomerID.Text;
            try
            {
                txtResultatAvecParametre.Text = ((int)sqlCmd.ExecuteScalar()).ToString();
            }
            catch (Exception)
            {
                throw;
            }
        }

      
       
    }
}
