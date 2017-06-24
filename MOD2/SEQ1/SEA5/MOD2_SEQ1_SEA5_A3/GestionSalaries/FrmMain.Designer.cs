namespace GestionSalaraies
{
    partial class FrmMain
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
            this.ms_Menu = new System.Windows.Forms.MenuStrip();
            this.gestionDesUtilisateursToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gestionDesSalariésToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_gestUtilisateurs = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_gestSalaries = new System.Windows.Forms.ToolStripMenuItem();
            this.ms_Menu.SuspendLayout();
            this.SuspendLayout();
            // 
            // ms_Menu
            // 
            this.ms_Menu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gestionDesUtilisateursToolStripMenuItem,
            this.gestionDesSalariésToolStripMenuItem});
            this.ms_Menu.Location = new System.Drawing.Point(0, 0);
            this.ms_Menu.Name = "ms_Menu";
            this.ms_Menu.Size = new System.Drawing.Size(586, 24);
            this.ms_Menu.TabIndex = 1;
            this.ms_Menu.Text = "menuStrip1";
            // 
            // gestionDesUtilisateursToolStripMenuItem
            // 
            this.gestionDesUtilisateursToolStripMenuItem.Name = "gestionDesUtilisateursToolStripMenuItem";
            this.gestionDesUtilisateursToolStripMenuItem.Size = new System.Drawing.Size(141, 20);
            this.gestionDesUtilisateursToolStripMenuItem.Text = "Gestion des Utilisateurs";
            this.gestionDesUtilisateursToolStripMenuItem.Click += new System.EventHandler(this.menu_gestUtilisateurs_Click);
            // 
            // gestionDesSalariésToolStripMenuItem
            // 
            this.gestionDesSalariésToolStripMenuItem.Name = "gestionDesSalariésToolStripMenuItem";
            this.gestionDesSalariésToolStripMenuItem.Size = new System.Drawing.Size(122, 20);
            this.gestionDesSalariésToolStripMenuItem.Text = "Gestion des Salariés";
            this.gestionDesSalariésToolStripMenuItem.Click += new System.EventHandler(this.menu_gestSalaries_Click);
            // 
            // menuToolStripMenuItem
            // 
            this.menuToolStripMenuItem.Name = "menuToolStripMenuItem";
            this.menuToolStripMenuItem.Size = new System.Drawing.Size(50, 20);
            this.menuToolStripMenuItem.Text = "Menu";
            // 
            // menu_gestUtilisateurs
            // 
            this.menu_gestUtilisateurs.Name = "menu_gestUtilisateurs";
            this.menu_gestUtilisateurs.Size = new System.Drawing.Size(195, 22);
            this.menu_gestUtilisateurs.Text = "Gestion des utilisateurs";
            this.menu_gestUtilisateurs.Click += new System.EventHandler(this.menu_gestUtilisateurs_Click);
            // 
            // menu_gestSalaries
            // 
            this.menu_gestSalaries.Name = "menu_gestSalaries";
            this.menu_gestSalaries.Size = new System.Drawing.Size(195, 22);
            this.menu_gestSalaries.Text = "Gestion des salariés";
            this.menu_gestSalaries.Click += new System.EventHandler(this.menu_gestSalaries_Click);
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(586, 501);
            this.Controls.Add(this.ms_Menu);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.ms_Menu;
            this.Name = "FrmMain";
            this.Text = "Gestion";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Shown += new System.EventHandler(this.FrmMain_Shown);
            this.ms_Menu.ResumeLayout(false);
            this.ms_Menu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ms_Menu;
        private System.Windows.Forms.ToolStripMenuItem menuToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menu_gestUtilisateurs;
        private System.Windows.Forms.ToolStripMenuItem menu_gestSalaries;
        private System.Windows.Forms.ToolStripMenuItem gestionDesUtilisateursToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestionDesSalariésToolStripMenuItem;
    }
}