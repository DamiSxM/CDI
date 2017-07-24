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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void productsBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.productsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);

        }

        private void Form2_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Categories'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.categoriesTableAdapter.Fill(this.comptoirSimplifieDataSet.Categories);
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Products'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.productsTableAdapter.Fill(this.comptoirSimplifieDataSet.Products);

        }
    }
}
