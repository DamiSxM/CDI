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
    public partial class frmFindCustomer : Form
    {
        public frmFindCustomer()
        {
            InitializeComponent();
        }

        public delegate void FindID(string id);
        public event FindID IDFound;

        void OnIDFound(string id)
        {
            if (IDFound != null) IDFound(id);
        }


        private void customersBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.customersBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);

        }

        private void frmCustomer_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Customers'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            //this.customersTableAdapter.Fill(this.comptoirSimplifieDataSet.Customers);

        }

        private void btnRecherche_Click(object sender, EventArgs e)
        {
            customersTableAdapter.ClearBeforeFill = true;

            if (txtCustomerID.Text != "" && txtCompanyName.Text != "")
            {
                customersTableAdapter.FillByCustomerID_and_CompanyName(this.comptoirSimplifieDataSet.Customers, txtCustomerID.Text, txtCompanyName.Text);
            }
            else
            {
                try
                {
                    if (txtCustomerID.Text != "")
                    {
                        customersTableAdapter.FillByID(this.comptoirSimplifieDataSet.Customers, txtCustomerID.Text);
                    }
                    else if (txtCompanyName.Text != "")
                    {
                        customersTableAdapter.FillByCompanyName(this.comptoirSimplifieDataSet.Customers, txtCompanyName.Text);
                    }
                }
                catch
                {
                    foreach (DataRow currentError in comptoirSimplifieDataSet.Customers.GetErrors())
                    {
                        System.Diagnostics.Debug.WriteLine(currentError.RowError);
                    }
                }
            }
        }

        private void customersDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = sender as DataGridView;
            MessageBox.Show(dgv.Rows[e.RowIndex].Cells[0].Value.ToString());

        }

        private void customersListBox_SelectedIndexChanged(object sender, EventArgs e)
        {

            ListBox lb = sender as ListBox;
            DataRowView dtrv = lb.SelectedItem as DataRowView;
            if (dtrv != null)
            {
                ComptoirSimplifieDataSet.CustomersRow row = dtrv.Row as ComptoirSimplifieDataSet.CustomersRow;
                //MessageBox.Show(row.CustomerID);
                OnIDFound(row.CustomerID);
            }
        }
    }
}
