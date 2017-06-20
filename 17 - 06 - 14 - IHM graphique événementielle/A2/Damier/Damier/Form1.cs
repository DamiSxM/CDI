using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Damier
{
    public partial class Form1 : Form
    {
        static int taille = 30;
        static int nb = 10;
        public Form1()
        {
            InitializeComponent();

            for (int i = 0; i < nb; i++)
            {
                for (int j = 0; j < nb; j++)
                {
                    Button btn = new Button();
                    btn.Size = new Size(taille, taille);
                    btn.Location = new Point(i * taille, j * taille);
                    if ((i + j) % 2 == 0) btn.BackColor = Color.Aqua;
                    else btn.BackColor = Color.Coral;

                    this.Controls.Add(btn);
                }
            }

            this.Refresh();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.Refresh();
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = this.CreateGraphics();

            Brush b = new SolidBrush(Color.Aqua);

            for (int i = 0; i < (this.Width / taille)/*nb*/; i++)
            {
                for (int j = 0; j < (this.Height / taille)/*nb*/; j++)
                {
                    if ((i + j) % 2 == 0) b = new SolidBrush(Color.Aqua);
                    else b = new SolidBrush(Color.Bisque);
                    
                    g.FillRectangle(b, i * taille, j * taille, taille, taille);
                }
            }

            b.Dispose();
            g.Dispose();
        }
    }
}
