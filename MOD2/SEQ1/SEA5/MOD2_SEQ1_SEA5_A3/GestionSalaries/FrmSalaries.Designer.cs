namespace GestionSalaraies
{
    partial class FrmSalaries
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
            this.label1 = new System.Windows.Forms.Label();
            this.cbSalaries = new System.Windows.Forms.ComboBox();
            this.btnNouveau = new System.Windows.Forms.Button();
            this.gbDetailSalarie = new System.Windows.Forms.GroupBox();
            this.txtBDay = new System.Windows.Forms.MaskedTextBox();
            this.pnlCommercial = new System.Windows.Forms.Panel();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.chkCommercial = new System.Windows.Forms.CheckBox();
            this.pnlBoutons = new System.Windows.Forms.Panel();
            this.btnSupprimer = new System.Windows.Forms.Button();
            this.btnValider = new System.Windows.Forms.Button();
            this.btnAnnuler = new System.Windows.Forms.Button();
            this.btnModifier = new System.Windows.Forms.Button();
            this.txtTauxCS = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtSalaireBrut = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtPrenom = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtNom = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMatricule = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.epSalarie = new System.Windows.Forms.ErrorProvider(this.components);
            this.gbDetailSalarie.SuspendLayout();
            this.pnlCommercial.SuspendLayout();
            this.pnlBoutons.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epSalarie)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(87, 73);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Choisir un salarié :";
            // 
            // cbSalaries
            // 
            this.cbSalaries.FormattingEnabled = true;
            this.cbSalaries.Location = new System.Drawing.Point(183, 69);
            this.cbSalaries.Margin = new System.Windows.Forms.Padding(2);
            this.cbSalaries.Name = "cbSalaries";
            this.cbSalaries.Size = new System.Drawing.Size(166, 21);
            this.cbSalaries.TabIndex = 4;
            this.cbSalaries.SelectedIndexChanged += new System.EventHandler(this.cbSalaries_SelectedIndexChanged);
            // 
            // btnNouveau
            // 
            this.btnNouveau.Location = new System.Drawing.Point(359, 69);
            this.btnNouveau.Margin = new System.Windows.Forms.Padding(2);
            this.btnNouveau.Name = "btnNouveau";
            this.btnNouveau.Size = new System.Drawing.Size(61, 20);
            this.btnNouveau.TabIndex = 3;
            this.btnNouveau.Text = "Nouveau";
            this.btnNouveau.UseVisualStyleBackColor = true;
            this.btnNouveau.Click += new System.EventHandler(this.btnNouveau_Click);
            // 
            // gbDetailSalarie
            // 
            this.gbDetailSalarie.Controls.Add(this.txtBDay);
            this.gbDetailSalarie.Controls.Add(this.pnlCommercial);
            this.gbDetailSalarie.Controls.Add(this.chkCommercial);
            this.gbDetailSalarie.Controls.Add(this.pnlBoutons);
            this.gbDetailSalarie.Controls.Add(this.txtTauxCS);
            this.gbDetailSalarie.Controls.Add(this.label7);
            this.gbDetailSalarie.Controls.Add(this.txtSalaireBrut);
            this.gbDetailSalarie.Controls.Add(this.label6);
            this.gbDetailSalarie.Controls.Add(this.label5);
            this.gbDetailSalarie.Controls.Add(this.txtPrenom);
            this.gbDetailSalarie.Controls.Add(this.label4);
            this.gbDetailSalarie.Controls.Add(this.txtNom);
            this.gbDetailSalarie.Controls.Add(this.label3);
            this.gbDetailSalarie.Controls.Add(this.txtMatricule);
            this.gbDetailSalarie.Controls.Add(this.label2);
            this.gbDetailSalarie.Location = new System.Drawing.Point(90, 132);
            this.gbDetailSalarie.Name = "gbDetailSalarie";
            this.gbDetailSalarie.Size = new System.Drawing.Size(330, 327);
            this.gbDetailSalarie.TabIndex = 6;
            this.gbDetailSalarie.TabStop = false;
            this.gbDetailSalarie.Text = "Détails Salarié";
            // 
            // txtBDay
            // 
            this.txtBDay.Location = new System.Drawing.Point(137, 97);
            this.txtBDay.Mask = "00/00/0000";
            this.txtBDay.Name = "txtBDay";
            this.txtBDay.Size = new System.Drawing.Size(100, 20);
            this.txtBDay.TabIndex = 7;
            this.txtBDay.ValidatingType = typeof(System.DateTime);
            // 
            // pnlCommercial
            // 
            this.pnlCommercial.Controls.Add(this.textBox2);
            this.pnlCommercial.Controls.Add(this.label9);
            this.pnlCommercial.Controls.Add(this.textBox1);
            this.pnlCommercial.Controls.Add(this.label8);
            this.pnlCommercial.Enabled = false;
            this.pnlCommercial.Location = new System.Drawing.Point(10, 190);
            this.pnlCommercial.Margin = new System.Windows.Forms.Padding(2);
            this.pnlCommercial.Name = "pnlCommercial";
            this.pnlCommercial.Size = new System.Drawing.Size(315, 64);
            this.pnlCommercial.TabIndex = 16;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(95, 35);
            this.textBox2.Margin = new System.Windows.Forms.Padding(2);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(132, 20);
            this.textBox2.TabIndex = 17;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(20, 39);
            this.label9.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(68, 13);
            this.label9.TabIndex = 16;
            this.label9.Text = "Commission :";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(107, 11);
            this.textBox1.Margin = new System.Windows.Forms.Padding(2);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(120, 20);
            this.textBox1.TabIndex = 15;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(20, 15);
            this.label8.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(83, 13);
            this.label8.TabIndex = 14;
            this.label8.Text = "Chiffre d\'affaire :";
            // 
            // chkCommercial
            // 
            this.chkCommercial.AutoSize = true;
            this.chkCommercial.Location = new System.Drawing.Point(105, 169);
            this.chkCommercial.Margin = new System.Windows.Forms.Padding(2);
            this.chkCommercial.Name = "chkCommercial";
            this.chkCommercial.Size = new System.Drawing.Size(80, 17);
            this.chkCommercial.TabIndex = 15;
            this.chkCommercial.Text = "Commercial";
            this.chkCommercial.UseVisualStyleBackColor = true;
            // 
            // pnlBoutons
            // 
            this.pnlBoutons.Controls.Add(this.btnSupprimer);
            this.pnlBoutons.Controls.Add(this.btnValider);
            this.pnlBoutons.Controls.Add(this.btnAnnuler);
            this.pnlBoutons.Controls.Add(this.btnModifier);
            this.pnlBoutons.Location = new System.Drawing.Point(10, 258);
            this.pnlBoutons.Margin = new System.Windows.Forms.Padding(2);
            this.pnlBoutons.Name = "pnlBoutons";
            this.pnlBoutons.Size = new System.Drawing.Size(315, 60);
            this.pnlBoutons.TabIndex = 14;
            // 
            // btnSupprimer
            // 
            this.btnSupprimer.Location = new System.Drawing.Point(250, 17);
            this.btnSupprimer.Margin = new System.Windows.Forms.Padding(2);
            this.btnSupprimer.Name = "btnSupprimer";
            this.btnSupprimer.Size = new System.Drawing.Size(63, 23);
            this.btnSupprimer.TabIndex = 1;
            this.btnSupprimer.Text = "Supprimer";
            this.btnSupprimer.UseVisualStyleBackColor = true;
            this.btnSupprimer.Click += new System.EventHandler(this.btnSupprimer_Click);
            // 
            // btnValider
            // 
            this.btnValider.Location = new System.Drawing.Point(137, 17);
            this.btnValider.Margin = new System.Windows.Forms.Padding(2);
            this.btnValider.Name = "btnValider";
            this.btnValider.Size = new System.Drawing.Size(56, 23);
            this.btnValider.TabIndex = 0;
            this.btnValider.Text = "Valider";
            this.btnValider.UseVisualStyleBackColor = true;
            // 
            // btnAnnuler
            // 
            this.btnAnnuler.Location = new System.Drawing.Point(77, 17);
            this.btnAnnuler.Margin = new System.Windows.Forms.Padding(2);
            this.btnAnnuler.Name = "btnAnnuler";
            this.btnAnnuler.Size = new System.Drawing.Size(56, 23);
            this.btnAnnuler.TabIndex = 0;
            this.btnAnnuler.Text = "Annuler";
            this.btnAnnuler.UseVisualStyleBackColor = true;
            // 
            // btnModifier
            // 
            this.btnModifier.Location = new System.Drawing.Point(17, 17);
            this.btnModifier.Margin = new System.Windows.Forms.Padding(2);
            this.btnModifier.Name = "btnModifier";
            this.btnModifier.Size = new System.Drawing.Size(56, 23);
            this.btnModifier.TabIndex = 0;
            this.btnModifier.Text = "Modifier";
            this.btnModifier.UseVisualStyleBackColor = true;
            this.btnModifier.Click += new System.EventHandler(this.btnModifier_Click);
            // 
            // txtTauxCS
            // 
            this.txtTauxCS.Location = new System.Drawing.Point(105, 145);
            this.txtTauxCS.Margin = new System.Windows.Forms.Padding(2);
            this.txtTauxCS.Name = "txtTauxCS";
            this.txtTauxCS.Size = new System.Drawing.Size(132, 20);
            this.txtTauxCS.TabIndex = 13;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(30, 149);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(54, 13);
            this.label7.TabIndex = 12;
            this.label7.Text = "Taux CS :";
            // 
            // txtSalaireBrut
            // 
            this.txtSalaireBrut.Location = new System.Drawing.Point(105, 121);
            this.txtSalaireBrut.Margin = new System.Windows.Forms.Padding(2);
            this.txtSalaireBrut.Name = "txtSalaireBrut";
            this.txtSalaireBrut.Size = new System.Drawing.Size(132, 20);
            this.txtSalaireBrut.TabIndex = 11;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(30, 125);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(67, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "Salaire Brut :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(30, 100);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(105, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Date de naissance  :";
            // 
            // txtPrenom
            // 
            this.txtPrenom.Location = new System.Drawing.Point(105, 73);
            this.txtPrenom.Margin = new System.Windows.Forms.Padding(2);
            this.txtPrenom.Name = "txtPrenom";
            this.txtPrenom.Size = new System.Drawing.Size(132, 20);
            this.txtPrenom.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(30, 77);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(49, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Prénom :";
            // 
            // txtNom
            // 
            this.txtNom.Location = new System.Drawing.Point(105, 49);
            this.txtNom.Margin = new System.Windows.Forms.Padding(2);
            this.txtNom.Name = "txtNom";
            this.txtNom.Size = new System.Drawing.Size(132, 20);
            this.txtNom.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(30, 53);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(35, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Nom :";
            // 
            // txtMatricule
            // 
            this.txtMatricule.Location = new System.Drawing.Point(105, 25);
            this.txtMatricule.Margin = new System.Windows.Forms.Padding(2);
            this.txtMatricule.Name = "txtMatricule";
            this.txtMatricule.Size = new System.Drawing.Size(132, 20);
            this.txtMatricule.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(30, 29);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Matricule :";
            // 
            // epSalarie
            // 
            this.epSalarie.ContainerControl = this;
            // 
            // FrmSalaries
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(714, 501);
            this.Controls.Add(this.gbDetailSalarie);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbSalaries);
            this.Controls.Add(this.btnNouveau);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmSalaries";
            this.Text = "Gestion des Salariés";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmSalaries_FormClosing);
            this.Load += new System.EventHandler(this.FrmSalaries_Load);
            this.gbDetailSalarie.ResumeLayout(false);
            this.gbDetailSalarie.PerformLayout();
            this.pnlCommercial.ResumeLayout(false);
            this.pnlCommercial.PerformLayout();
            this.pnlBoutons.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.epSalarie)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbSalaries;
        private System.Windows.Forms.Button btnNouveau;
        private System.Windows.Forms.GroupBox gbDetailSalarie;
        private System.Windows.Forms.TextBox txtPrenom;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtNom;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMatricule;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTauxCS;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtSalaireBrut;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel pnlBoutons;
        private System.Windows.Forms.Button btnValider;
        private System.Windows.Forms.Button btnAnnuler;
        private System.Windows.Forms.Button btnModifier;
        private System.Windows.Forms.Button btnSupprimer;
        private System.Windows.Forms.Panel pnlCommercial;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.CheckBox chkCommercial;
        private System.Windows.Forms.ErrorProvider epSalarie;
        private System.Windows.Forms.MaskedTextBox txtBDay;
    }
}