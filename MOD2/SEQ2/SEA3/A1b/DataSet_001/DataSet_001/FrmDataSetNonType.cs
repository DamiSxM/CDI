using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Diagnostics;

namespace DataSet_001
{
    public partial class FrmDataSetNonType : Form
    {
        // Déclaration des variables globales 

        //DataSet DSComptoirAnglaisManuel;
        DataSet DSComptoirAnglaisDBSQL;
        SqlDataAdapter dtPays;

        public FrmDataSetNonType()
        {
            InitializeComponent();
        }


        /// <summary>
        /// Création ex-nihilo d'un DataSet
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnDataTableManuel_Click(object sender, EventArgs e)
        {
            DataSet DSComptoirAnglaisManuel;


            // Le DataSet a été déclaré en global
            DSComptoirAnglaisManuel = new DataSet();
            DSComptoirAnglaisManuel.DataSetName = "ComptoirAnglaisManuel";

            // Création de la DataTabLe Pays
            DataTable workTable = new DataTable("Pays");

            // Création de la 1ere colonne 
            DataColumn column = new DataColumn();
            column.DataType = System.Type.GetType("System.String");
            column.ColumnName = "IdPays2";
            column.AutoIncrement = false;
            column.Caption = "ID Pays 2";
            column.ReadOnly = false;
            // Ajout de la colonne à la table
            workTable.Columns.Add(column);
            // Définition de la clé primaire
            // Nécessité de passer par un tableau de colonnes
            workTable.PrimaryKey = new DataColumn[] { column };

            // Créer les autres colonnes 
            workTable.Columns.Add(new DataColumn()
            {
                ColumnName = "IdPays3",
                MaxLength = 3,
                AllowDBNull = false,
                DataType = typeof(String)
            });

            workTable.Columns.Add("IdDevise", typeof(String));
            workTable.Columns.Add("IdPaysNum", typeof(int));


            // Ajout de la table au dataset
            DSComptoirAnglaisManuel.Tables.Add(workTable);

            // A compléter

            // Création de la nouvelle table des Libellés des pays
            DataTable lblPays = new DataTable("Pays_libelles");


            // Ajout des colonnes à la table
            lblPays.Columns.Add(new DataColumn()
            {
                ColumnName = "IdPays2",
                AllowDBNull = false
            });
            lblPays.Columns.Add(new DataColumn()
            {
                ColumnName = "IdLangue",
                DataType = typeof(String),
                AllowDBNull = false
            });
            lblPays.Columns.Add(new DataColumn()
            {
                DataType = typeof(String),
                ColumnName = "LibellePays"
            });

            // Définition de la clé primaire
            // Clé composite des 2 colonnes ID Pays et Langue
            DataColumn[] Pkeys = new DataColumn[]
            {
                lblPays.Columns["IdPays2"],
                lblPays.Columns["IdLangue"]
            };
            lblPays.PrimaryKey = Pkeys;

            // Ajout de la table au DataSet
            DSComptoirAnglaisManuel.Tables.Add(lblPays);


            // Définition de la clé étrangère
            // La DataRelation nécessite deux DataColumn, une colonne parent,
            // une colonne enfant et un nom
            DSComptoirAnglaisManuel.Tables["Pays_libelles"].ParentRelations.Add(new DataRelation("FK_Pays_PaysLibelle",
                DSComptoirAnglaisManuel.Tables["Pays"].Columns["IdPays2"],
                DSComptoirAnglaisManuel.Tables["Pays_libelles"].Columns["IdPays2"]
            ));


            // Ajout de lignes dans les DataTables Pays et Libellé pays
            // Avec NewRow / Table, la ligne est créée à partir du schéma de la table
            DataRow row;
            row = DSComptoirAnglaisManuel.Tables["Pays"].NewRow();
            row["IdPays2"] = "FR";
            row["IdPays3"] = "FRA";
            row["IdPaysNum"] = 250;
            row["IdDevise"] = "EUR";
            // Ajout de la ligne dans la table
            DSComptoirAnglaisManuel.Tables["Pays"].Rows.Add(row);


            row = DSComptoirAnglaisManuel.Tables["Pays_libelles"].NewRow();
            row["IdPays2"] = "FR";
            row["IdLangue"] = "FRANCAIS";
            row["LibellePays"] = "France !";
            DSComptoirAnglaisManuel.Tables["Pays_libelles"].Rows.Add(row);
        }

        private void btnDataSetDBSQL_Click(object sender, EventArgs e)
        {
            //DataSet DSComptoirAnglaisDBSQL;

            // Le DataSet a été déclaré en global
            DSComptoirAnglaisDBSQL = new DataSet();
            DSComptoirAnglaisDBSQL.DataSetName = "ComptoirAnglais";
            SqlConnection sqlConnect;
            sqlConnect = new SqlConnection(DataSet_001.Properties.Settings.Default.ComptoirAnglaisCS);

            // Création du DataAdapter avec requeêt de sélection Ad-hoc
            SqlDataAdapter
                adapter = new SqlDataAdapter("select * from Pays", sqlConnect);
            adapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            // Récupération des informations de schémas et des données
            adapter.Fill(DSComptoirAnglaisDBSQL);

            MessageBox.Show(string.Format("Nombre de tables : {0}", DSComptoirAnglaisDBSQL.Tables.Count.ToString()));
        }


        /// <summary>
        /// Création des commandes du DataAdapter
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCreationCommandes_Click(object sender, EventArgs e)
        {
            //DataSet DSComptoirAnglaisDBSQL;

            DSComptoirAnglaisDBSQL = new DataSet();
            DSComptoirAnglaisDBSQL.DataSetName = "ComptoirAnglais";
            string strSQL = "SELECT * FROM Pays";
            dtPays = new SqlDataAdapter(strSQL, DataSet_001.Properties.Settings.Default.ComptoirAnglaisCS);
            dtPays.MissingSchemaAction = MissingSchemaAction.AddWithKey;

            // association de requêtes paramètrées aux commandes

            strSQL = "DELETE FROM Pays WHERE IdPays2 = @IdPays2";
            dtPays.DeleteCommand = new SqlCommand(strSQL, dtPays.SelectCommand.Connection);
            dtPays.DeleteCommand.Parameters.Add("@IdPays2", SqlDbType.Char, 2);
            dtPays.DeleteCommand.Parameters["@IdPays2"].SourceColumn = "IdPays2";
            dtPays.DeleteCommand.Parameters["@IdPays2"].SourceVersion = System.Data.DataRowVersion.Original;

            strSQL = "UPDATE PAYS SET IdPays3=@IdPays3, IdPaysNum=@IdPaysNum, IdDevise=@IdDevise, LibellePays=@LibellePays ";
            strSQL += "WHERE IdPays2 = @IdPays2";
            dtPays.UpdateCommand = new SqlCommand(strSQL, dtPays.SelectCommand.Connection);
            dtPays.UpdateCommand.Parameters.Add("@IdPays2", SqlDbType.Char, 2);
            dtPays.UpdateCommand.Parameters.Add("@IdPays3", SqlDbType.Char, 3);
            dtPays.UpdateCommand.Parameters.Add("@IdPaysNum", SqlDbType.Int);
            dtPays.UpdateCommand.Parameters.Add("@IdDevise", SqlDbType.Char, 3);
            dtPays.UpdateCommand.Parameters.Add("@LibellePays", SqlDbType.NVarChar, 155);
            dtPays.UpdateCommand.Parameters["@IdPays2"].SourceColumn = "IdPays2";
            dtPays.UpdateCommand.Parameters["@IdPays2"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.UpdateCommand.Parameters["@IdPays3"].SourceColumn = "IdPays2";
            dtPays.UpdateCommand.Parameters["@IdPays3"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.UpdateCommand.Parameters["@IdPaysNum"].SourceColumn = "IdPaysNum";
            dtPays.UpdateCommand.Parameters["@IdPaysNum"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.UpdateCommand.Parameters["@IdDevise"].SourceColumn = "IdDevise";
            dtPays.UpdateCommand.Parameters["@IdDevise"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.UpdateCommand.Parameters["@LibellePays"].SourceColumn = "LibellePays";
            dtPays.UpdateCommand.Parameters["@LibellePays"].SourceVersion = System.Data.DataRowVersion.Current;

            // Création de la commande d'insertion avec les paramètres nécessaires

            strSQL = @"INSERT INTO [Pays]([idPays2],[idPays3],[idPaysNum],[idDevise],[LibellePays]) ";
            strSQL += "VALUES(@idPays2,@idPays3,@idPaysNum,@idDevise,@LibellePays)";
            dtPays.InsertCommand = new SqlCommand(strSQL, dtPays.SelectCommand.Connection);

            // Définition des paramètres à compléter
            //@idPays2,@idPays3,@idPaysNum,@idDevise,@LibellePays
            dtPays.InsertCommand.Parameters.Add("@idPays2", SqlDbType.Char, 2);
            dtPays.InsertCommand.Parameters.Add("@IdPays3", SqlDbType.Char, 3);
            dtPays.InsertCommand.Parameters.Add("@IdPaysNum", SqlDbType.Int);
            dtPays.InsertCommand.Parameters.Add("@IdDevise", SqlDbType.Char, 3);
            dtPays.InsertCommand.Parameters.Add("@LibellePays", SqlDbType.NVarChar, 155);


            // Récupération des données
            dtPays.InsertCommand.Parameters["@IdPays2"].SourceColumn = "IdPays2";
            dtPays.InsertCommand.Parameters["@IdPays2"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.InsertCommand.Parameters["@IdPays3"].SourceColumn = "IdPays2";
            dtPays.InsertCommand.Parameters["@IdPays3"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.InsertCommand.Parameters["@IdPaysNum"].SourceColumn = "IdPaysNum";
            dtPays.InsertCommand.Parameters["@IdPaysNum"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.InsertCommand.Parameters["@IdDevise"].SourceColumn = "IdDevise";
            dtPays.InsertCommand.Parameters["@IdDevise"].SourceVersion = System.Data.DataRowVersion.Current;
            dtPays.InsertCommand.Parameters["@LibellePays"].SourceColumn = "LibellePays";
            dtPays.InsertCommand.Parameters["@LibellePays"].SourceVersion = System.Data.DataRowVersion.Current;


            dtPays.Fill(DSComptoirAnglaisDBSQL, "Pays");

            AfficherErreurs(DSComptoirAnglaisDBSQL);

            MessageBox.Show(DSComptoirAnglaisDBSQL.Tables["Pays"].Rows.Count.ToString());

        }

        private void btnMAJDB_Click(object sender, EventArgs e)
        {

            // Les modifications se font sur le DataSet DSComptoirAnglaisDBSQL
            // après exécution du gestionnaire btnCreationCommandes_Click

            // Ajout d'une ligne
            /*DataRow row;
            row = DSComptoirAnglaisDBSQL.Tables["Pays"].NewRow();
            row["IdPays2"] = "WD";
            row["IdPays3"] = "WAK";
            row["IdPaysNum"] = 999;
            row["IdDevise"] = "USD";
            row["LibellePays"] = "Wakanda";
            DSComptoirAnglaisDBSQL.Tables["Pays"].Rows.Add(row);*/

            // Modification d'une ligne


            DataRow findDR = DSComptoirAnglaisDBSQL.Tables["Pays"].Rows.Find("PL");
            findDR["idDevise"] = "EUR";

            foreach (DataRow dr in DSComptoirAnglaisDBSQL.Tables["Pays"].Rows)
            {
                if (dr.RowState == DataRowState.Modified)
                {
                    MessageBox.Show(dr["LibellePays"].ToString());
                }
            }
            // Report des mmodifications / base de données

            

            dtPays.Update(DSComptoirAnglaisDBSQL.Tables["Pays"]);

            // Message si modifications OK




        }
        private void AfficherErreurs(DataSet dataSet)
        {
            DataRow[] LignesEnErreur;

            foreach (DataTable table in dataSet.Tables)
            {
                // Si la table comporte des erreurs
                if (table.HasErrors)
                {
                    // Chargement des lignes en erreurs
                    LignesEnErreur = table.GetErrors();

                    // Extraction des erreurs

                    for (int i = 0; i < LignesEnErreur.Length; i++)
                    {
                        // Extraction des colonnes en erreur

                        DataColumn[] colsEnErreur = LignesEnErreur[i].GetColumnsInError();

                        for (int j = 0; j < colsEnErreur.Length; j++)
                        {

                            Console.WriteLine("{0} {1}",
                                colsEnErreur[j].ColumnName,
                                LignesEnErreur[i].GetColumnError(colsEnErreur[j]));
                        }


                    }
                }
            }
        }




    }

}



