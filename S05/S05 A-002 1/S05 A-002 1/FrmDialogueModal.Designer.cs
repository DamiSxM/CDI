namespace S05_A_002_1
{
    partial class FrmDialogueModal
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
            this.btn_OK = new System.Windows.Forms.Button();
            this.btn_Abandon = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_OK
            // 
            this.btn_OK.Location = new System.Drawing.Point(12, 12);
            this.btn_OK.Name = "btn_OK";
            this.btn_OK.Size = new System.Drawing.Size(75, 23);
            this.btn_OK.TabIndex = 0;
            this.btn_OK.Text = "OK";
            this.btn_OK.UseVisualStyleBackColor = true;
            this.btn_OK.Click += new System.EventHandler(this.btn_OK_Click);
            // 
            // btn_Abandon
            // 
            this.btn_Abandon.Location = new System.Drawing.Point(12, 41);
            this.btn_Abandon.Name = "btn_Abandon";
            this.btn_Abandon.Size = new System.Drawing.Size(75, 23);
            this.btn_Abandon.TabIndex = 1;
            this.btn_Abandon.Text = "Abandon";
            this.btn_Abandon.UseVisualStyleBackColor = true;
            this.btn_Abandon.Click += new System.EventHandler(this.btn_Abandon_Click);
            // 
            // FrmDialogueModal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.btn_Abandon);
            this.Controls.Add(this.btn_OK);
            this.Name = "FrmDialogueModal";
            this.Text = "FrmDialogueModal";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_OK;
        private System.Windows.Forms.Button btn_Abandon;
    }
}