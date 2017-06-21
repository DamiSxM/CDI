using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SalariesDll;

namespace S04A04_Exceptions
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            try
            {
                Salaries _team = new Salaries();
                Salarie sal1 = new Salarie() { Nom = "Bachelet", Prenom = "Damien", Matricule = "00XXX00", DateNaissance = new DateTime(1986, 10, 13), SalaireBrut = 1200, TauxCS = 0.1m };
                Salarie sal2 = new Salarie() { Nom = "Bachelet1", Prenom = "Bob", Matricule = "00AXX00", DateNaissance = new DateTime(1986, 10, 13), SalaireBrut = 1200, TauxCS = 0.1m };
                _team.Add(sal1);
                _team.Add(sal2);

            }
            catch (Exception e)
            {
                textBox1.Text = e.Message;
                textBox2.Text = e.StackTrace;
            }

        }
    }
}
