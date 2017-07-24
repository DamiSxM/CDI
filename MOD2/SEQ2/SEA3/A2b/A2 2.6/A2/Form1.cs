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
        enum Contextes
        {
            Initial = 0,
            Edition = 1,
            Nouveau = 2
        };
        public Form1()
        {
            InitializeComponent();
        }

        private void productsBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.productsBindingSource.CancelEdit();
            /*this.Validate();
            this.productsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.comptoirSimplifieDataSet);*/

        }

        private void GererContexte(Contextes c)
        {
            switch (c)
            {
                case Contextes.Initial:
                    productsComboBox.Enabled = true;
                    productsComboBox.Focus();
                    gbChamps.Enabled = false;
                    btEditer.Enabled = true;
                    btnAjout.Enabled = true;
                    btnAnnuler.Enabled = false;
                    btnValider.Enabled = false;
                    break;
                case Contextes.Edition:
                    productsComboBox.Enabled = false;
                    gbChamps.Enabled = true;
                    btEditer.Enabled = false;
                    btnAjout.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    break;
                case Contextes.Nouveau:
                    productsComboBox.Enabled = false;
                    gbChamps.Enabled = true;
                    btnAjout.Enabled = false;
                    btnAnnuler.Enabled = true;
                    btnValider.Enabled = true;
                    break;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Categories'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.categoriesTableAdapter.Fill(this.comptoirSimplifieDataSet.Categories);
            // TODO: cette ligne de code charge les données dans la table 'comptoirSimplifieDataSet.Categories'. Vous pouvez la déplacer ou la supprimer selon les besoins.
            this.productsTableAdapter.Fill(this.comptoirSimplifieDataSet.Products);

            GererContexte(Contextes.Initial);
        }

        private void btnValider_Click(object sender, EventArgs e)
        {

            DataRowView drv = productsBindingSource.Current as DataRowView;
            ComptoirSimplifieDataSet.ProductsRow pr = drv.Row as ComptoirSimplifieDataSet.ProductsRow;


            if (isValide(pr))
            {
                Validate();

                GererContexte(Contextes.Initial);
                productsBindingSource.EndEdit();


                productsTableAdapter.Update(comptoirSimplifieDataSet.Products);
            }

            //if (IsValid())
            //{
            //    Validate();

            //    GererContexte(Contextes.Initial);
            //    productsBindingSource.EndEdit();


            //    productsTableAdapter.Update(comptoirSimplifieDataSet.Products);
            //}
        }

        private void btnAnnuler_Click(object sender, EventArgs e)
        {
            GererContexte(Contextes.Initial);
            ep_Products.Clear();
            productsBindingSource.CancelEdit();
        }

        private void btnAjout_Click(object sender, EventArgs e)
        {
            GererContexte(Contextes.Nouveau);

            productsBindingSource.AddNew();

        }

        private void btEditer_Click(object sender, EventArgs e)
        {
            GererContexte(Contextes.Edition);
        }

        private bool isValide(ComptoirSimplifieDataSet.ProductsRow productRow)
        {
            productRow.ClearErrors();

            if (DBNull.Value.Equals(productRow.ProductName))
                productRow.SetColumnError("ProductName", "Le nom doit être renseigné");
            else if (productRow.ProductName.Length == 0)
                productRow.SetColumnError("ProductName", "Le nom doit être renseigné");

            ep_Products.UpdateBinding();

            return !productRow.HasErrors;
        }

        private bool IsValid()
        {
            DataRowView drv = productsBindingSource.Current as DataRowView;
            ComptoirSimplifieDataSet.ProductsRow pr = drv.Row as ComptoirSimplifieDataSet.ProductsRow;

            bool res = true;
            if (categoriesComboBox.Text == "" || pr.CategoryID == 0)
            {
                res = false;
                ep_Products.SetError(categoriesComboBox, "La catégorie doit être renseignée");
            }
            else ep_Products.SetError(categoriesComboBox, string.Empty);

            if (pr.UnitPrice == 0)
            {
                res = false;
                ep_Products.SetError(unitPriceTextBox, "Le prix doit être suppérieur à zéro");
            }
            else ep_Products.SetError(unitPriceTextBox, string.Empty);

            if (productNameTextBox.Text == "" || string.IsNullOrEmpty(pr.ProductName))
            {
                res = false;
                ep_Products.SetError(productNameTextBox, "Le produit doit avoir un nom");
            }
            else ep_Products.SetError(productNameTextBox, string.Empty);

            return res;
        }
    }
}
