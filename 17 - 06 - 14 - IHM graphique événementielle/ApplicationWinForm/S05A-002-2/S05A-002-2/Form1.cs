using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;

namespace S05A_002_2
{
    public partial class Form1 : Form
    {
        int result = 0;
        public Form1()
        {
            InitializeComponent();
        }

        static void test()
        {

        }
        bool ajouterPlus()
        {
            if (textBox1.Text != string.Empty)
            {
                string txt = textBox1.Text;
                if (txt.Last<char>() == '+') return false;
                else return true;
            }
            return false;
        }
        private void Ajouter(object sender, EventArgs e)
        {
            if (ajouterPlus()) textBox1.Text += "+";
            textBox1.Text += ((Button)sender).Text;
            result += int.Parse(((Button)sender).Text);
        }

        private void Vider(object sender, EventArgs e)
        {
            textBox1.Text = string.Empty;
            result = 0;
        }

        private void Calculer(object sender, EventArgs e)
        {
            textBox1.Text += " = " + result;
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            Debug.WriteLine("fin de l’application additionneur");
        }
    }
}
