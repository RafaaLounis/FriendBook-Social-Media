using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;         // pour les base de donnee access
using System.Data.OleDb;

namespace PrjWinCsFreindBookLounisRafaa
{
    public partial class Identification : System.Web.UI.Page
    {
      static  OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\OneDrive\Documents\FreindBook.mdb");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerifier_Click(object sender, EventArgs e)
        {
            string Email = txtUsername.Text.Trim();
            string mot2passe = txtMot2passe.Text.Trim();

            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");
            mycon.Open();

            string sql = "SELECT NumMembre FROM Membres WHERE Email = '" + Email + "' AND Mot2Passe = '" + mot2passe + "'";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myReader = mycmd.ExecuteReader(); // myReader explication requise faire une recherche //

            if (myReader.Read() == true) // si  Membres existe 
            {
                Session["MembreId"] = Convert.ToInt32(myReader["NumMembre"]);

                mycon.Close();
                Server.Transfer("Acceuil.aspx");
            }
            else
            {
                mycon.Close();
                lblErreur.Text = " Numero ou Mot de passe Invalid, Essayez encore ";
            }
        }

        protected void txtMot2passe_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Sinscrire_Click(object sender, EventArgs e)
        {

            Server.Transfer("Inscription.aspx");

        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}