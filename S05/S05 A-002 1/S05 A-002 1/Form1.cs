using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace S05_A_002_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void appelModal_Click(object sender, EventArgs e)
        {
            FrmDialogueModal dialogueModal = new FrmDialogueModal();
            DialogResult resultat = dialogueModal.ShowDialog();

            switch (resultat)
            {
                case DialogResult.None:
                    break;
                case DialogResult.OK:
                    break;
                case DialogResult.Cancel:
                    txtResultat.Text = "Annulation";
                    break;
                case DialogResult.Abort:
                    txtResultat.Text = "Abandon";
                    break;
                case DialogResult.Retry:
                    break;
                case DialogResult.Ignore:
                    break;
                case DialogResult.Yes:
                    break;
                case DialogResult.No:
                    break;
                default:
                    break;
            }
        }
    }
}
