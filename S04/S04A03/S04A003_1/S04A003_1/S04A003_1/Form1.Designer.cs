namespace S04A003_1
{
    partial class Form1
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
            this.txtAjout = new System.Windows.Forms.TextBox();
            this.btnAjouter = new System.Windows.Forms.Button();
            this.txtNewSalaire = new System.Windows.Forms.TextBox();
            this.txtAugmentation = new System.Windows.Forms.TextBox();
            this.txtSalaire = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // txtAjout
            // 
            this.txtAjout.Location = new System.Drawing.Point(22, 34);
            this.txtAjout.Name = "txtAjout";
            this.txtAjout.Size = new System.Drawing.Size(174, 20);
            this.txtAjout.TabIndex = 0;
            this.txtAjout.Text = "0";
            // 
            // btnAjouter
            // 
            this.btnAjouter.Location = new System.Drawing.Point(202, 32);
            this.btnAjouter.Name = "btnAjouter";
            this.btnAjouter.Size = new System.Drawing.Size(75, 23);
            this.btnAjouter.TabIndex = 1;
            this.btnAjouter.Text = "Ajouter";
            this.btnAjouter.UseVisualStyleBackColor = true;
            this.btnAjouter.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtNewSalaire
            // 
            this.txtNewSalaire.Location = new System.Drawing.Point(22, 87);
            this.txtNewSalaire.Name = "txtNewSalaire";
            this.txtNewSalaire.Size = new System.Drawing.Size(255, 20);
            this.txtNewSalaire.TabIndex = 2;
            // 
            // txtAugmentation
            // 
            this.txtAugmentation.Location = new System.Drawing.Point(22, 113);
            this.txtAugmentation.Name = "txtAugmentation";
            this.txtAugmentation.Size = new System.Drawing.Size(255, 20);
            this.txtAugmentation.TabIndex = 3;
            // 
            // txtSalaire
            // 
            this.txtSalaire.Location = new System.Drawing.Point(22, 61);
            this.txtSalaire.Name = "txtSalaire";
            this.txtSalaire.Size = new System.Drawing.Size(255, 20);
            this.txtSalaire.TabIndex = 4;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(304, 143);
            this.Controls.Add(this.txtSalaire);
            this.Controls.Add(this.txtAugmentation);
            this.Controls.Add(this.txtNewSalaire);
            this.Controls.Add(this.btnAjouter);
            this.Controls.Add(this.txtAjout);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtAjout;
        private System.Windows.Forms.Button btnAjouter;
        private System.Windows.Forms.TextBox txtNewSalaire;
        private System.Windows.Forms.TextBox txtAugmentation;
        private System.Windows.Forms.TextBox txtSalaire;
    }
}

