using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace S05A_002_3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void checkBox1_CheckStateChanged(object sender, EventArgs e)
        {
            groupBox2.Visible = checkBox1.Checked;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textBox1.Text != string.Empty) { groupBox1.Enabled = true; }
            else
            {
                groupBox1.Enabled = false;
                checkBox1.Checked = false;
                checkBox2.Checked = false;
                checkBox3.Checked = false;
            }

            label2.Text = textBox1.Text;
        }

        private void Fond_CheckedChanged(object sender, EventArgs e)
        {
            if ((sender as RadioButton).Checked) label2.BackColor = Color.FromName((sender as RadioButton).Tag.ToString());
        }
        
        private void checkBox2_CheckStateChanged(object sender, EventArgs e)
        {
            groupBox3.Visible = checkBox2.Checked;
        }

        private void checkBox3_CheckStateChanged(object sender, EventArgs e)
        {
            groupBox4.Visible = checkBox3.Checked;
        }

        private void Caracteres_CheckedChanged(object sender, EventArgs e)
        {
            if ((sender as RadioButton).Checked) label2.ForeColor = Color.FromName((sender as RadioButton).Tag.ToString());
        }
        
        private void radioButton9_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton9.Checked) label2.Text = label2.Text.ToUpper();
        }

        private void radioButton8_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton9.Checked) label2.Text = label2.Text.ToLower();
        }
    }
}
