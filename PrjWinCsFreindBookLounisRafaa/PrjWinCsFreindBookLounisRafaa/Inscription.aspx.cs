using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace PrjWinCsFreindBookLounisRafaa
{
    public partial class Inscription : System.Web.UI.Page
    {

        static OleDbConnection mycon;

        protected void Page_Load(object sender, EventArgs e)
        {


        }





        protected void btnEnregistrer_Click1(object sender, EventArgs e)
        {
            string nom = txtNom.Text.Trim();
            string email = txtEmail.Text.Trim();
            string telephone = txtNumTel.Text.Trim();
            string adresse = txtAdresse.Text.Trim();
            string Mot2Passe = txtMotPasse.Text.Trim();


            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");
            mycon.Open();

            string sql = "SELECT NumMembre FROM Membres WHERE Email = '" + email + "'";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myrder = mycmd.ExecuteReader();
            myrder.Close();


            //sql = "SELECT RefEtudiant FROM NumMembre WHERE  = '" + email + "' AND Nom = '" + nom + "' AND Telephone = '" + telephone;
            //mycmd = new OleDbCommand(sql, mycon);
            //myrder = mycmd.ExecuteReader();

            sql = "INSERT INTO Membres (Nom, Email, Mot2Passe,Telephone) values('" + nom + "' , '" + email + "' , '" + Mot2Passe + "' , '" + telephone + "')";
            mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Server.Transfer("Identification.aspx");

            mycon.Close();
        }
    }
}