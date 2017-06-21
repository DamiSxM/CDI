namespace S05_A_002_1
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
            this.appelModal = new System.Windows.Forms.Button();
            this.txtResultat = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // appelModal
            // 
            this.appelModal.Location = new System.Drawing.Point(12, 12);
            this.appelModal.Name = "appelModal";
            this.appelModal.Size = new System.Drawing.Size(138, 23);
            this.appelModal.TabIndex = 0;
            this.appelModal.Text = "Appel dialogue modal";
            this.appelModal.UseVisualStyleBackColor = true;
            this.appelModal.Click += new System.EventHandler(this.appelModal_Click);
            // 
            // txtResultat
            // 
            this.txtResultat.Enabled = false;
            this.txtResultat.Location = new System.Drawing.Point(156, 14);
            this.txtResultat.Name = "txtResultat";
            this.txtResultat.Size = new System.Drawing.Size(294, 20);
            this.txtResultat.TabIndex = 1;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(462, 50);
            this.Controls.Add(this.txtResultat);
            this.Controls.Add(this.appelModal);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button appelModal;
        private System.Windows.Forms.TextBox txtResultat;
    }
}

