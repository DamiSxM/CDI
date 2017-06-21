﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using SalariesDll;
using Utilitaires;

namespace GestionSalaraies 
{
    public partial class DialConnexion : Form
    {
        SauvegardeXML _Sauvegardeur = new SauvegardeXML();
        Utilisateurs _Users = new Utilisateurs();
        Utilisateur _User = new Utilisateur();
        public DialConnexion()
        {
            InitializeComponent();
            _Users.Load(_Sauvegardeur, Settings.Default.AppData);

            AcceptButton = btnConnexion;
            CancelButton = btnQuitter;

            //_Users.
        }
        #region Gestionnaires Evenements Validation

        /// <summary>
        /// Validation ID Utilisateur
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtIdentifiant_Validating(object sender, CancelEventArgs e)
        {
            if(Utilisateur.IsIdentifiantValide(txtIdentifiant.Text))
            //if (IsIdCorrect(txtIdentifiant.Text))
            {
                epUtilisateur.SetError(txtIdentifiant, String.Empty);
            }
            else
            {
                epUtilisateur.SetError(txtIdentifiant, "Identifiant invalide");
                e.Cancel = true;
            }

        }
        /// <summary>
        /// Interception du traitement de la touche
        /// Assignation de dialogResult Cancel sur Escap
        /// </summary>
        /// <param name="keyData"></param>
        /// <returns></returns>
        protected override bool ProcessDialogKey(Keys keyData)
        {
            if (keyData == Keys.Escape) this.DialogResult = DialogResult.Cancel;
            return base.ProcessDialogKey(keyData);
        }

        /// <summary>
        /// Vérification du mot de passe
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtMDP_Validating(object sender, CancelEventArgs e)
        {
            if(Utilisateur.IsMotPasseValide(txtMDP.Text))
            //if (IsMotPasseCorrect(txtMDP.Text, txtIdentifiant.Text))
            {
                epUtilisateur.SetError(txtMDP, String.Empty);
            }
            else
            {
                epUtilisateur.SetError(txtMDP, "Mot de passe incorrect");
                e.Cancel = true;
            }

        }
        #endregion



        private void btnQuitter_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void btnConnexion_Click(object sender, EventArgs e)
        {

            _User = _Users.UtilisateurByMatricule(txtIdentifiant.Text);
            if(_User != null && _User.MotDePasse == txtMDP.Text)
            {
                this.DialogResult = DialogResult.OK;
            }

        }

        /*private bool IsIdCorrect(string id)
        {
            if (String.IsNullOrEmpty(id)) return false;
            if (!char.IsLetter(id[0])) return false;
            if (id.Length < 3) return false;
            return true;
        }

        private bool IsMotPasseCorrect(string motPasse, string id)
        {
            if (String.IsNullOrEmpty(motPasse)) return false;
            if (motPasse.Length < 5) return false;
            return (motPasse == id);
        }*/


    }
}

