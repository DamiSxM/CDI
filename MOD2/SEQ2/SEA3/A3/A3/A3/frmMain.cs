using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace A3
{
    public partial class frmMain : Form
    {
        frmOrders Commandes;
        frmCustomer Customers;
        public frmMain()
        {
            InitializeComponent();
        }

        private void clientsToolStripMenuItem_Click(object sender, EventArgs e) // Clients
        {
            if (Customers == null)
            {
                Customers = new frmCustomer();
                Customers.MdiParent = this;
                Customers.Show();
            }
            else Customers.Activate();
        }

        private void produitsToolStripMenuItem_Click(object sender, EventArgs e) // Produits
        {
            if (Commandes == null)
            {
                Commandes = new frmOrders();
                Commandes.MdiParent = this;
                Commandes.Show();
            }
            else Commandes.Activate();
        }
    }
}
