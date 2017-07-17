﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace A002
{
    public enum InfosConnexion
    {
        ConnexionOK = 0,
        UtilisateurInconnu = -101,
        CompteBloque = -102,
        MotPasseInvalide = -103,
        ApplicationInexistante = -104,
        RoleInexistant = -105,
        ProblemeConnexion = -106
    }
    public partial class FrmConnexion : Form
    {
       

        public FrmConnexion()
        {
            InitializeComponent();
            this.Text = string.Format("{0}-Identifiez-vous", Properties.Settings.Default.SecuriteConnectingString);
        }

        /// <summary>
        /// Demande de connexion
        /// Test des valeurs retournées par la procédure stockée 
        /// appelée pour contrôler les informations de connexion 
        /// au service de l'application des utilisateurs
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void btnValider_Click(object sender, EventArgs e)
        {
            bool connexionValide = false;
            erpConnexion.SetError(txtMotPasse, string.Empty);
            erpConnexion.SetError(txtIDUtilisateur, string.Empty);
            
            switch (ControlerInfosConnexion(txtIDUtilisateur.Text, txtMotPasse.Text,Properties.Settings.Default.SecuriteConnectingString))
            {
                case InfosConnexion.UtilisateurInconnu:
                    erpConnexion.SetError(txtIDUtilisateur, "L'identifiant saisi n'est pas valide. Corrigez S.V.P.");
                    txtIDUtilisateur.SelectAll();
                    txtIDUtilisateur.Focus();
                    break;
                case InfosConnexion.MotPasseInvalide:
                    erpConnexion.SetError(txtMotPasse, "Le mot de passe communiqué n'est pas valide. corrigez S.V.P.");
                    txtMotPasse.SelectAll();
                    txtMotPasse.Focus();
                    break;

                case InfosConnexion.CompteBloque:
                    erpConnexion.SetError(txtIDUtilisateur, "Votre compte utilisateur est bloqué.Prenez contact avec notre hotline.");
                    btnAbandonner.Focus();
                    break;
                case InfosConnexion.ApplicationInexistante:
                    erpConnexion.SetError(txtIDUtilisateur, "Application inexistante.");
                    btnAbandonner.Focus();
                    break;
                case InfosConnexion.RoleInexistant:
                    erpConnexion.SetError(txtIDUtilisateur, "Vous ne pouvez pas accéder à cette application. Voir votre administrateur.");
                    btnAbandonner.Focus();
                    break;
                case InfosConnexion.ProblemeConnexion:
                    erpConnexion.SetError(txtIDUtilisateur, "Problèmes de connexion.Vous ne pouvez accéder actuellement à l'application.");
                    btnAbandonner.Focus();
                    break;
                case InfosConnexion.ConnexionOK:
                    connexionValide = true;
                    break;
                default:
                    break;
            }
            if (!connexionValide)
            {
                this.DialogResult = DialogResult.None;
            }
            else
            {
                this.DialogResult = DialogResult.OK;
            }
        }
        /// <summary>
        /// Cette fonction permet de déterminer l'exactitude des informations fournies
        /// pour la connexion au service de gestion des utilisateurs
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="MotPasse"></param>
        /// <returns></returns>
        private InfosConnexion ControlerInfosConnexion(string identifiant, string motPasse,string nomApplication)
        {
            SqlConnection con = new SqlConnection(Properties.Settings.Default.SecuriteConnectingString);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "psUtilisateur_Authentifier";

            SqlCommandBuilder.DeriveParameters(cmd);
            cmd.Parameters["@IDUtilisateur"].Value = txtIDUtilisateur.Text;
            cmd.Parameters["@MotPasseClair"].Value = txtMotPasse.Text;
            cmd.Parameters["@NomApplication"].Value = Properties.Settings.Default.NomApplication;
            cmd.Parameters["@IDRole"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            con.Close();


            switch ((int)cmd.Parameters[0].Value)
            {
                case 0:
                    Guid role = (Guid)cmd.Parameters["@IDRole"].Value;
                    MessageBox.Show(role.ToString());
                    return InfosConnexion.ConnexionOK;
                    break;
                case -101: return InfosConnexion.UtilisateurInconnu;
                    break;
                case -102: return InfosConnexion.CompteBloque;
                    break;
                case -103: return InfosConnexion.MotPasseInvalide;
                    break;
                case -104: return InfosConnexion.ApplicationInexistante;
                    break;
                case -105: return InfosConnexion.RoleInexistant;
            }



            //@IDUtilisateur as char(10),
            //@MotPasseClair as nvarchar(50) = null,
            //@NomApplication as nvarchar(255),
            //@IDRole as uniqueidentifier output



            return InfosConnexion.ApplicationInexistante;
        }

        private void FrmConnexion_Shown(object sender, EventArgs e)
        {
            txtIDUtilisateur.Focus();
        }

        private void FrmConnexion_Load(object sender, EventArgs e)
        {

        }


    }
}
