using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
//sing System.Linq;
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
            //customersBindingSource.SuspendBinding();
            //customersBindingSource.ResumeBinding();
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
            paysTableAdapter.Fill(this.comptoirSimplifieDataSet.Pays);
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
                if (txtCustomerID.Text != "")
                {
                    //string s = new String('_', (comptoirSimplifieDataSet.Customers.CustomerIDColumn.MaxLength - txtCustomerID.Text.Length));
                    //customersTableAdapter.FillByID(this.comptoirSimplifieDataSet.Customers, string.Format("{0}{1}", txtCustomerID.Text, s));
                    customersTableAdapter.FillByID(this.comptoirSimplifieDataSet.Customers, txtCustomerID.Text);
                }
                else if (txtCompanyName.Text != "")
                {
                    customersTableAdapter.FillByCompanyName(this.comptoirSimplifieDataSet.Customers, txtCompanyName.Text);
                }
            }
        }

        private void customersDataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = sender as DataGridView;
            MessageBox.Show(dgv.Rows[e.RowIndex].Cells[0].Value.ToString());

        }

        private void customersDataGridView_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            DataRowView drv = customersBindingSource.Current as DataRowView;
            if (drv != null)
            {
                ComptoirSimplifieDataSet.CustomersRow row = drv.Row as ComptoirSimplifieDataSet.CustomersRow;
                OnIDFound(row.CustomerID);
            }
        }
    }
}
