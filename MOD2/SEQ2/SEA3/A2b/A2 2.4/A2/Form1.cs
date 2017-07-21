using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void productsBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            /*this.Validate();
            this.productsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);*/

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Categories'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.productsTableAdapter.Fill(this.comptoirSimplifieDataSet.Products);
        }

        private void btnValider_Click(object sender, EventArgs e)
        {
            this.productsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);
        }

        private void btnAnnuler_Click(object sender, EventArgs e)
        {
            this.productsBindingSource.CancelEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);
        }

        private void btnAjout_Click(object sender, EventArgs e)
        {
            this.productsBindingSource.AddNew();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);
        }
    }
}
