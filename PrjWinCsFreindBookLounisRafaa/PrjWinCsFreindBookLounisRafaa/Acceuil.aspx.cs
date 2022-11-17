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
    public partial class Acceuil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");
            mycon.Open();

            Int32 refm = Convert.ToInt32(Session["MembreId"]);
            string sql = "SELECT Nom FROM Membres WHERE NumMembre = " + refm;

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myrder = mycmd.ExecuteReader();

            string nom = "";
            if (myrder.Read() == true)
            {
                nom = myrder["Nom"].ToString();


            }
            myrder.Close();


            int compteur = 0;

            sql = "SELECT Messages.NumMessage, Messages.Titre, Messages.Envoyeur,  " +
               "Membres.Nom FROM Messages, Membres WHERE Messages.Envoyeur = Membres.NumMembre" +
               " AND Messages.Receveur = " + refm;
            mycmd = new OleDbCommand(sql, mycon);
            myrder = mycmd.ExecuteReader();

            //Creer la ligne des titres dans le tableau dynamique
            TableRow maligne = new TableRow();
            TableCell mycell = new TableCell();
            mycell.Text = "Titres : ";
            maligne.Cells.Add(mycell);

            mycell = new TableCell();
            mycell.Text = "Provenence : ";
            maligne.Cells.Add(mycell);

            mycell = new TableCell();
            mycell.Text = "Actions : ";
            maligne.Cells.Add(mycell);

            maligne.BackColor = System.Drawing.Color.Red;
            tableMessages.Rows.Add(maligne);

            while (myrder.Read())
            {
                compteur++;

                //Creer une ligne pour chaque message
                maligne = new TableRow();
                mycell = new TableCell();
                mycell.Text = myrder["Titre"].ToString();
                maligne.Cells.Add(mycell);

                mycell = new TableCell();
                mycell.Text = myrder["Nom"].ToString(); ;
                maligne.Cells.Add(mycell);

                int refmsg = Convert.ToInt32(myrder["NumMessage"]);

                mycell = new TableCell();
                mycell.Text = "<a href='MessageReader.aspx?refm=" + refmsg + "'> Lire </a>";

                mycell.Text += " <a href='DeletMessage.aspx?refM=" + refmsg + "'>Effacer</a> ";

                maligne.Cells.Add(mycell);

                tableMessages.Rows.Add(maligne);

            }
            mycon.Close();
            lblInfos.Text = "Bienvenue " + nom + " vous avez " + compteur + " messages";
        }

        protected void btnFiltrer_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnLireMessage_Click(object sender, EventArgs e)
        {
           

        }

        protected void btnRechercher_Click(object sender, EventArgs e)
        {
            
        }
    }
}