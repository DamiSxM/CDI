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
    public partial class FrmLectureDonnees : Form
    {
        public SqlConnection sqlConnection = null;
        public FrmLectureDonnees()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Exécution de la méthode ExecuteReader  
        /// Chargement de la liste
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCommandeParametree_Click(object sender, EventArgs e)
        {
            //SqlConnection sqlConnection = new SqlConnection(Properties.Settings.Default.ADO_NetConnectionString);
            try
            {
                //sqlConnection.Open();
                SqlCommand sqlCmd = new SqlCommand(txtRequete.Text, sqlConnection);
                sqlCmd.Parameters.Add("@CustomerID", SqlDbType.VarChar);
                sqlCmd.Parameters["@CustomerID"].Value = txtCustomerID.Text;

                SqlDataReader rdr = sqlCmd.ExecuteReader();

                while (rdr.Read())
                {
                    string client = rdr.GetString(0);
                    string nom = rdr.GetString(1);
                    string contact = rdr.GetString(2);
                    int cde = rdr.GetInt32(3);
                    DateTime date = rdr.GetDateTime(4);

                    lstDernieresCommandes.Items.Add(string.Format(
                        "Client {0} Nom {1} Contact {2} Cde {3} Date {4}\n",
                        client,
                        nom,
                        contact,
                        cde.ToString(),
                        date.ToString()
                        ));
                }
                rdr.Close();

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                //sqlConnection.Close();
            }
        }
    }
}
