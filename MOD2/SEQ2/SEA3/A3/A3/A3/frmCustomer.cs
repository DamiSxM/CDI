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
            paysBindingSource.CurrentChanged += PaysBindingSource_CurrentChanged;
        }

        private void PaysBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (paysBindingSource.Current as ComptoirSimplifieDataSet.PaysRow != null)
            {
                string idPays = (paysBindingSource.Current as ComptoirSimplifieDataSet.PaysRow).IdPays2;
                (customersBindingSource.Current as ComptoirSimplifieDataSet.CustomersRow).idPays = idPays;
            }
        }

        private void customersBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            /*this.Validate();
            this.customersBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);*/

        }

        private void frmCustomer_Load(object sender, EventArgs e)
        {
            paysTableAdapter.Fill(this.comptoirSimplifieDataSet.Pays);
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
            customersTableAdapter.FillByID(comptoirSimplifieDataSet.Customers, id);
        }

        private void btnNouveau_Click(object sender, EventArgs e)
        {
            customersBindingSource.AddNew();
        }

        private void btnValider_Click(object sender, EventArgs e)
        {
            customersBindingSource.EndEdit();
            tableAdapterManager.UpdateAll(comptoirSimplifieDataSet);
        }

        private void btnModifier_Click(object sender, EventArgs e)
        {

        }

        private void btnSupprimer_Click(object sender, EventArgs e)
        {
            switch(MessageBox.Show("Voule-vous vraiment supprimer ce customer ?", "Attention !", MessageBoxButtons.OKCancel))
            {
                case DialogResult.OK:
                    customersBindingSource.RemoveCurrent();
                    customersBindingSource.EndEdit();
                    tableAdapterManager.UpdateAll(comptoirSimplifieDataSet);
                    break;
            }

        }

        private void frmCustomer_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;
        }
    }
}
