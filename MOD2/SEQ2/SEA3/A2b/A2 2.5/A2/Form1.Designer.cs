namespace A2
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label productIDLabel;
            System.Windows.Forms.Label productNameLabel;
            System.Windows.Forms.Label unitPriceLabel;
            System.Windows.Forms.Label categoryIDLabel;
            this.comptoirSimplifieDataSet = new A2.ComptoirSimplifieDataSet();
            this.productsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.productsTableAdapter = new A2.ComptoirSimplifieDataSetTableAdapters.ProductsTableAdapter();
            this.tableAdapterManager = new A2.ComptoirSimplifieDataSetTableAdapters.TableAdapterManager();
            this.productsComboBox = new System.Windows.Forms.ComboBox();
            this.productIDTextBox = new System.Windows.Forms.TextBox();
            this.productNameTextBox = new System.Windows.Forms.TextBox();
            this.unitPriceTextBox = new System.Windows.Forms.TextBox();
            this.btnValider = new System.Windows.Forms.Button();
            this.btnAnnuler = new System.Windows.Forms.Button();
            this.btnAjout = new System.Windows.Forms.Button();
            this.categoriesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.categoriesTableAdapter = new A2.ComptoirSimplifieDataSetTableAdapters.CategoriesTableAdapter();
            this.categoriesComboBox = new System.Windows.Forms.ComboBox();
            this.gbChamps = new System.Windows.Forms.GroupBox();
            this.gbBouton = new System.Windows.Forms.GroupBox();
            this.btEditer = new System.Windows.Forms.Button();
            this.ep_Products = new System.Windows.Forms.ErrorProvider(this.components);
            productIDLabel = new System.Windows.Forms.Label();
            productNameLabel = new System.Windows.Forms.Label();
            unitPriceLabel = new System.Windows.Forms.Label();
            categoryIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.comptoirSimplifieDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.productsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoriesBindingSource)).BeginInit();
            this.gbChamps.SuspendLayout();
            this.gbBouton.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ep_Products)).BeginInit();
            this.SuspendLayout();
            // 
            // productIDLabel
            // 
            productIDLabel.AutoSize = true;
            productIDLabel.Location = new System.Drawing.Point(6, 16);
            productIDLabel.Name = "productIDLabel";
            productIDLabel.Size = new System.Drawing.Size(61, 13);
            productIDLabel.TabIndex = 1;
            productIDLabel.Text = "Product ID:";
            // 
            // productNameLabel
            // 
            productNameLabel.AutoSize = true;
            productNameLabel.Location = new System.Drawing.Point(6, 42);
            productNameLabel.Name = "productNameLabel";
            productNameLabel.Size = new System.Drawing.Size(78, 13);
            productNameLabel.TabIndex = 3;
            productNameLabel.Text = "Product Name:";
            // 
            // unitPriceLabel
            // 
            unitPriceLabel.AutoSize = true;
            unitPriceLabel.Location = new System.Drawing.Point(6, 68);
            unitPriceLabel.Name = "unitPriceLabel";
            unitPriceLabel.Size = new System.Drawing.Size(56, 13);
            unitPriceLabel.TabIndex = 5;
            unitPriceLabel.Text = "Unit Price:";
            // 
            // categoryIDLabel
            // 
            categoryIDLabel.AutoSize = true;
            categoryIDLabel.Location = new System.Drawing.Point(6, 94);
            categoryIDLabel.Name = "categoryIDLabel";
            categoryIDLabel.Size = new System.Drawing.Size(66, 13);
            categoryIDLabel.TabIndex = 7;
            categoryIDLabel.Text = "Category ID:";
            // 
            // comptoirSimplifieDataSet
            // 
            this.comptoirSimplifieDataSet.DataSetName = "ComptoirSimplifieDataSet";
            this.comptoirSimplifieDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // productsBindingSource
            // 
            this.productsBindingSource.DataMember = "Products";
            this.productsBindingSource.DataSource = this.comptoirSimplifieDataSet;
            // 
            // productsTableAdapter
            // 
            this.productsTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CategoriesTableAdapter = null;
            this.tableAdapterManager.CustomersTableAdapter = null;
            this.tableAdapterManager.Order_DetailsTableAdapter = null;
            this.tableAdapterManager.OrdersTableAdapter = null;
            this.tableAdapterManager.PaysTableAdapter = null;
            this.tableAdapterManager.ProductsTableAdapter = this.productsTableAdapter;
            this.tableAdapterManager.UpdateOrder = A2.ComptoirSimplifieDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // productsComboBox
            // 
            this.productsComboBox.DataSource = this.productsBindingSource;
            this.productsComboBox.DisplayMember = "ProductName";
            this.productsComboBox.FormattingEnabled = true;
            this.productsComboBox.Location = new System.Drawing.Point(12, 12);
            this.productsComboBox.Name = "productsComboBox";
            this.productsComboBox.Size = new System.Drawing.Size(338, 21);
            this.productsComboBox.TabIndex = 1;
            this.productsComboBox.ValueMember = "ProductID";
            // 
            // productIDTextBox
            // 
            this.productIDTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.productsBindingSource, "ProductID", true));
            this.productIDTextBox.Location = new System.Drawing.Point(90, 13);
            this.productIDTextBox.Name = "productIDTextBox";
            this.productIDTextBox.ReadOnly = true;
            this.productIDTextBox.Size = new System.Drawing.Size(100, 20);
            this.productIDTextBox.TabIndex = 2;
            // 
            // productNameTextBox
            // 
            this.productNameTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.productsBindingSource, "ProductName", true));
            this.productNameTextBox.Location = new System.Drawing.Point(90, 39);
            this.productNameTextBox.Name = "productNameTextBox";
            this.productNameTextBox.Size = new System.Drawing.Size(216, 20);
            this.productNameTextBox.TabIndex = 4;
            // 
            // unitPriceTextBox
            // 
            this.unitPriceTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.productsBindingSource, "UnitPrice", true));
            this.unitPriceTextBox.Location = new System.Drawing.Point(90, 65);
            this.unitPriceTextBox.Name = "unitPriceTextBox";
            this.unitPriceTextBox.Size = new System.Drawing.Size(100, 20);
            this.unitPriceTextBox.TabIndex = 6;
            // 
            // btnValider
            // 
            this.btnValider.Location = new System.Drawing.Point(171, 19);
            this.btnValider.Name = "btnValider";
            this.btnValider.Size = new System.Drawing.Size(75, 23);
            this.btnValider.TabIndex = 9;
            this.btnValider.Text = "&Valider";
            this.btnValider.UseVisualStyleBackColor = true;
            this.btnValider.Click += new System.EventHandler(this.btnValider_Click);
            // 
            // btnAnnuler
            // 
            this.btnAnnuler.Location = new System.Drawing.Point(252, 19);
            this.btnAnnuler.Name = "btnAnnuler";
            this.btnAnnuler.Size = new System.Drawing.Size(75, 23);
            this.btnAnnuler.TabIndex = 10;
            this.btnAnnuler.Text = "&Annuler";
            this.btnAnnuler.UseVisualStyleBackColor = true;
            this.btnAnnuler.Click += new System.EventHandler(this.btnAnnuler_Click);
            // 
            // btnAjout
            // 
            this.btnAjout.Location = new System.Drawing.Point(90, 19);
            this.btnAjout.Name = "btnAjout";
            this.btnAjout.Size = new System.Drawing.Size(75, 23);
            this.btnAjout.TabIndex = 11;
            this.btnAjout.Text = "&Nouveau";
            this.btnAjout.UseVisualStyleBackColor = true;
            this.btnAjout.Click += new System.EventHandler(this.btnAjout_Click);
            // 
            // categoriesBindingSource
            // 
            this.categoriesBindingSource.DataMember = "Categories";
            this.categoriesBindingSource.DataSource = this.comptoirSimplifieDataSet;
            // 
            // categoriesTableAdapter
            // 
            this.categoriesTableAdapter.ClearBeforeFill = true;
            // 
            // categoriesComboBox
            // 
            this.categoriesComboBox.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.productsBindingSource, "CategoryID", true));
            this.categoriesComboBox.DataSource = this.categoriesBindingSource;
            this.categoriesComboBox.DisplayMember = "CategoryName";
            this.categoriesComboBox.FormattingEnabled = true;
            this.categoriesComboBox.Location = new System.Drawing.Point(90, 91);
            this.categoriesComboBox.Name = "categoriesComboBox";
            this.categoriesComboBox.Size = new System.Drawing.Size(216, 21);
            this.categoriesComboBox.TabIndex = 12;
            this.categoriesComboBox.ValueMember = "CategoryID";
            // 
            // gbChamps
            // 
            this.gbChamps.Controls.Add(productIDLabel);
            this.gbChamps.Controls.Add(this.categoriesComboBox);
            this.gbChamps.Controls.Add(categoryIDLabel);
            this.gbChamps.Controls.Add(this.unitPriceTextBox);
            this.gbChamps.Controls.Add(unitPriceLabel);
            this.gbChamps.Controls.Add(this.productNameTextBox);
            this.gbChamps.Controls.Add(productNameLabel);
            this.gbChamps.Controls.Add(this.productIDTextBox);
            this.gbChamps.Location = new System.Drawing.Point(12, 39);
            this.gbChamps.Name = "gbChamps";
            this.gbChamps.Size = new System.Drawing.Size(338, 123);
            this.gbChamps.TabIndex = 13;
            this.gbChamps.TabStop = false;
            // 
            // gbBouton
            // 
            this.gbBouton.Controls.Add(this.btnAnnuler);
            this.gbBouton.Controls.Add(this.btnValider);
            this.gbBouton.Controls.Add(this.btnAjout);
            this.gbBouton.Controls.Add(this.btEditer);
            this.gbBouton.Location = new System.Drawing.Point(12, 168);
            this.gbBouton.Name = "gbBouton";
            this.gbBouton.Size = new System.Drawing.Size(338, 54);
            this.gbBouton.TabIndex = 14;
            this.gbBouton.TabStop = false;
            // 
            // btEditer
            // 
            this.btEditer.Location = new System.Drawing.Point(9, 19);
            this.btEditer.Name = "btEditer";
            this.btEditer.Size = new System.Drawing.Size(75, 23);
            this.btEditer.TabIndex = 15;
            this.btEditer.Text = "&Editer";
            this.btEditer.UseVisualStyleBackColor = true;
            this.btEditer.Click += new System.EventHandler(this.btEditer_Click);
            // 
            // ep_Products
            // 
            this.ep_Products.ContainerControl = this;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(360, 231);
            this.Controls.Add(this.gbBouton);
            this.Controls.Add(this.gbChamps);
            this.Controls.Add(this.productsComboBox);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.comptoirSimplifieDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.productsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoriesBindingSource)).EndInit();
            this.gbChamps.ResumeLayout(false);
            this.gbChamps.PerformLayout();
            this.gbBouton.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ep_Products)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private ComptoirSimplifieDataSet comptoirSimplifieDataSet;
        private System.Windows.Forms.BindingSource productsBindingSource;
        private ComptoirSimplifieDataSetTableAdapters.ProductsTableAdapter productsTableAdapter;
        private ComptoirSimplifieDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.ComboBox productsComboBox;
        private System.Windows.Forms.TextBox productIDTextBox;
        private System.Windows.Forms.TextBox productNameTextBox;
        private System.Windows.Forms.TextBox unitPriceTextBox;
        private System.Windows.Forms.Button btnValider;
        private System.Windows.Forms.Button btnAnnuler;
        private System.Windows.Forms.Button btnAjout;
        private System.Windows.Forms.BindingSource categoriesBindingSource;
        private ComptoirSimplifieDataSetTableAdapters.CategoriesTableAdapter categoriesTableAdapter;
        private System.Windows.Forms.ComboBox categoriesComboBox;
        private System.Windows.Forms.GroupBox gbChamps;
        private System.Windows.Forms.GroupBox gbBouton;
        private System.Windows.Forms.Button btEditer;
        private System.Windows.Forms.ErrorProvider ep_Products;
    }
}