namespace DataSet_001
{
    partial class FrmDataSetNonType
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            this.grpDeconnecte = new System.Windows.Forms.GroupBox();
            this.btnMAJDB = new System.Windows.Forms.Button();
            this.btnCreationCommandes = new System.Windows.Forms.Button();
            this.btnDataSetDBSQL = new System.Windows.Forms.Button();
            this.btnDataTable = new System.Windows.Forms.Button();
            this.grpDeconnecte.SuspendLayout();
            this.SuspendLayout();
            // 
            // grpDeconnecte
            // 
            this.grpDeconnecte.Controls.Add(this.btnMAJDB);
            this.grpDeconnecte.Controls.Add(this.btnCreationCommandes);
            this.grpDeconnecte.Controls.Add(this.btnDataSetDBSQL);
            this.grpDeconnecte.Controls.Add(this.btnDataTable);
            this.grpDeconnecte.Location = new System.Drawing.Point(13, 44);
            this.grpDeconnecte.Margin = new System.Windows.Forms.Padding(4);
            this.grpDeconnecte.Name = "grpDeconnecte";
            this.grpDeconnecte.Padding = new System.Windows.Forms.Padding(4);
            this.grpDeconnecte.Size = new System.Drawing.Size(424, 314);
            this.grpDeconnecte.TabIndex = 3;
            this.grpDeconnecte.TabStop = false;
            this.grpDeconnecte.Text = "Mode déconnecté";
            // 
            // btnMAJDB
            // 
            this.btnMAJDB.Location = new System.Drawing.Point(24, 233);
            this.btnMAJDB.Margin = new System.Windows.Forms.Padding(4);
            this.btnMAJDB.Name = "btnMAJDB";
            this.btnMAJDB.Size = new System.Drawing.Size(292, 28);
            this.btnMAJDB.TabIndex = 4;
            this.btnMAJDB.Text = "Mettre A jour DataSet";
            this.btnMAJDB.UseVisualStyleBackColor = true;
            this.btnMAJDB.Click += new System.EventHandler(this.btnMAJDB_Click);
            // 
            // btnCreationCommandes
            // 
            this.btnCreationCommandes.Location = new System.Drawing.Point(24, 173);
            this.btnCreationCommandes.Margin = new System.Windows.Forms.Padding(4);
            this.btnCreationCommandes.Name = "btnCreationCommandes";
            this.btnCreationCommandes.Size = new System.Drawing.Size(292, 25);
            this.btnCreationCommandes.TabIndex = 3;
            this.btnCreationCommandes.Text = "Création Commandes";
            this.btnCreationCommandes.UseVisualStyleBackColor = true;
            this.btnCreationCommandes.Click += new System.EventHandler(this.btnCreationCommandes_Click);
            // 
            // btnDataSetDBSQL
            // 
            this.btnDataSetDBSQL.Location = new System.Drawing.Point(24, 100);
            this.btnDataSetDBSQL.Margin = new System.Windows.Forms.Padding(4);
            this.btnDataSetDBSQL.Name = "btnDataSetDBSQL";
            this.btnDataSetDBSQL.Size = new System.Drawing.Size(292, 28);
            this.btnDataSetDBSQL.TabIndex = 1;
            this.btnDataSetDBSQL.Text = "Creer le DataSet avec le DataAdapter";
            this.btnDataSetDBSQL.UseVisualStyleBackColor = true;
            this.btnDataSetDBSQL.Click += new System.EventHandler(this.btnDataSetDBSQL_Click);
            // 
            // btnDataTable
            // 
            this.btnDataTable.Location = new System.Drawing.Point(24, 31);
            this.btnDataTable.Margin = new System.Windows.Forms.Padding(4);
            this.btnDataTable.Name = "btnDataTable";
            this.btnDataTable.Size = new System.Drawing.Size(292, 28);
            this.btnDataTable.TabIndex = 0;
            this.btnDataTable.Text = "Creer Manuellement DataSet";
            this.btnDataTable.UseVisualStyleBackColor = true;
            this.btnDataTable.Click += new System.EventHandler(this.btnDataTableManuel_Click);
            // 
            // FrmDataSetNonType
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(389, 417);
            this.Controls.Add(this.grpDeconnecte);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "FrmDataSetNonType";
            this.Text = "Test des objets ADO";
            this.grpDeconnecte.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpDeconnecte;
        private System.Windows.Forms.Button btnDataTable;
        private System.Windows.Forms.Button btnDataSetDBSQL;
        private System.Windows.Forms.Button btnCreationCommandes;
        private System.Windows.Forms.Button btnMAJDB;

    }
}

