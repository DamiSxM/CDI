﻿namespace BanqueSGWGUI
{
    partial class FrmListeComptes
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
            this.comptesComboBox = new System.Windows.Forms.ComboBox();
            this.btnAjouterCompte = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // comptesComboBox
            // 
            this.comptesComboBox.DisplayMember = "Numero";
            this.comptesComboBox.FormattingEnabled = true;
            this.comptesComboBox.Location = new System.Drawing.Point(20, 59);
            this.comptesComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.comptesComboBox.Name = "comptesComboBox";
            this.comptesComboBox.Size = new System.Drawing.Size(204, 21);
            this.comptesComboBox.TabIndex = 1;
            this.comptesComboBox.ValueMember = "Numero";
            // 
            // btnAjouterCompte
            // 
            this.btnAjouterCompte.Location = new System.Drawing.Point(237, 59);
            this.btnAjouterCompte.Margin = new System.Windows.Forms.Padding(2);
            this.btnAjouterCompte.Name = "btnAjouterCompte";
            this.btnAjouterCompte.Size = new System.Drawing.Size(56, 20);
            this.btnAjouterCompte.TabIndex = 2;
            this.btnAjouterCompte.Text = "...";
            this.btnAjouterCompte.UseVisualStyleBackColor = true;
            this.btnAjouterCompte.Click += new System.EventHandler(this.btnAjouterCompte_Click);
            // 
            // FrmListeComptes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(649, 369);
            this.Controls.Add(this.btnAjouterCompte);
            this.Controls.Add(this.comptesComboBox);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FrmListeComptes";
            this.Text = "Liste des comptes ";
            this.Load += new System.EventHandler(this.FrmListeComptes_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ComboBox comptesComboBox;
        private System.Windows.Forms.Button btnAjouterCompte;
    }
}

