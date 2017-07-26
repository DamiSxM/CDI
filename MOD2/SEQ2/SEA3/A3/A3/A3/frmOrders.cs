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
    public partial class frmOrders : Form
    {
        public frmOrders()
        {
            InitializeComponent();

            ordersComboBox.Enabled = false;

            ordersBindingSource.CurrentChanged += OrdersBindingSource_CurrentChanged;
        }

        private void OrdersBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            BindingSource snd = sender as BindingSource;
            DataRowView dtrv = snd.Current as DataRowView;
            if (dtrv != null)
            {
                ComptoirSimplifieDataSet.OrdersRow row = dtrv.Row as ComptoirSimplifieDataSet.OrdersRow;
                order_DetailsTableAdapter.ClearBeforeFill = true;
                order_DetailsTableAdapter.FillByOrderID(comptoirSimplifieDataSet.Order_Details, row.OrderID);

                ordersComboBox.Enabled = (comptoirSimplifieDataSet.Order_Details.Rows.Count > 0);
            }
        }

        //private void CustomersBindingSource_CurrentChanged(object sender, EventArgs e)
        //{
        //    BindingSource snd = sender as BindingSource;
        //    DataRowView dtrv = snd.Current as DataRowView;
        //    if (dtrv != null)
        //    {
        //        ComptoirSimplifieDataSet.CustomersRow row = dtrv.Row as ComptoirSimplifieDataSet.CustomersRow;
        //        if (row.CustomerID != null)
        //        {
        //            ordersTableAdapter.ClearBeforeFill = true;
        //            ordersTableAdapter.FillByCustomerID(comptoirSimplifieDataSet.Orders, row.CustomerID);
        //        }

        //    }
        //}

        private void customersBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            //this.Validate();
            //this.customersBindingSource.EndEdit();
            //this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Order_Details'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            //this.order_DetailsTableAdapter.Fill(this.comptoirSimplifieDataSet.Order_Details);
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Orders'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            //this.ordersTableAdapter.Fill(this.comptoirSimplifieDataSet.Orders);
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Customers'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            paysTableAdapter.Fill(comptoirSimplifieDataSet.Pays);
            //this.customersTableAdapter.Fill(this.comptoirSimplifieDataSet.Customers);

        }

        private void customersComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox snd = sender as ComboBox;
        }

        private void btnRechercher_Click(object sender, EventArgs e)
        {
            frmFindCustomer findCustomer = new frmFindCustomer();
            findCustomer.IDFound += FindCustomer_IDFound;
            findCustomer.Show();
        }

        private void FindCustomer_IDFound(string id)
        {
            ordersTableAdapter.ClearBeforeFill = true;

            //comptoirSimplifieDataSet.Orders = ordersTableAdapter.GetDataByCustomerID(id);

            try
            {
                ordersTableAdapter.FillByCustomerID(comptoirSimplifieDataSet.Orders, id);
            }
            catch
            {
                foreach (DataRow currentError in comptoirSimplifieDataSet.Orders.GetErrors())
                {
                    System.Diagnostics.Debug.WriteLine(currentError.RowError);
                }
            }

            ordersComboBox.Enabled = (comptoirSimplifieDataSet.Orders.Rows.Count > 0);
        }
    }
}
