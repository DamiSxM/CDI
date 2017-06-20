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

namespace S04A003_1
{
    public partial class Form1 : Form
    {
        Salarie _sal1 = new Salarie() { Matricule = "00XXX00", Nom = "Bachelet", Prenom = "Damien", DateNaissance = new DateTime(1986, 10, 13), SalaireBrut = 1200, TauxCS = 0.2m };
        public Form1()
        {
            InitializeComponent();

            _sal1.OnChangementSalaire += _sal1_OnChangementSalaire;
        }

        private void _sal1_OnChangementSalaire(object sender, SalarieChangementSalaireEventArgs e)
        {
            txtNewSalaire.Text = "Ancien salaire : " + e.AncienSalaire.ToString("0.00");
            txtAugmentation.Text = "Taux d'augmentation : " + e.TauxAugmentation.ToString("0.00");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            _sal1.SalaireBrut += decimal.Parse(txtAjout.Text.Replace('.',','));
            txtSalaire.Text = "Salaire : " + _sal1.SalaireBrut.ToString("0.00");
        }
    }
}
