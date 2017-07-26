using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A3
{
    public partial class frmCustomer : Form
    {
        public frmCustomer()
        {
            InitializeComponent();
        }

        private void customersBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.customersBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);

        }

        private void frmCustomer_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Pays'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.paysTableAdapter.Fill(this.comptoirSimplifieDataSet.Pays);
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Customers'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            //this.customersTableAdapter.Fill(this.comptoirSimplifieDataSet.Customers);

        }

        private void btnRechercher_Click(object sender, EventArgs e)
        {
            frmFindCustomer findCustome = new frmFindCustomer();
            findCustome.IDFound += FindCustome_IDFound;
            findCustome.Show();
        }

        private void FindCustome_IDFound(string id)
        {
            customersTableAdapter.ClearBeforeFill = true;

            //comptoirSimplifieDataSet.Orders = ordersTableAdapter.GetDataByCustomerID(id);

            try
            {
                customersTableAdapter.FillByID(comptoirSimplifieDataSet.Customers, id);
            }
            catch
            {
                foreach (DataRow currentError in comptoirSimplifieDataSet.Customers.GetErrors())
                {
                    System.Diagnostics.Debug.WriteLine(currentError.RowError);
                }
            }
        }

        private void btnNouveau_Click(object sender, EventArgs e)
        {

            customersBindingSource.AddNew();

            comptoirSimplifieDataSet.Categories.n

            /*comptoirSimplifieDataSet.Customers.AddCustomersRow(
                customerIDTextBox.Text,
                companyNameTextBox.Text,
                contactNameTextBox.Text,
                contactTitleTextBox.Text,
                emailTextBox.Text,
                creditCardTextBox.Text,
                addressTextBox.Text,
                cityTextBox.Text,
                regionTextBox.Text,
                postalCodeTextBox.Text,
                paysBindingSource.Current as ComptoirSimplifieDataSet.PaysRow,
                phoneTextBox.Text,
                faxTextBox.Text,
                null
            );

            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);*/
        }

        private void btnValider_Click(object sender, EventArgs e)
        {
            customersBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);
        }
    }
}
