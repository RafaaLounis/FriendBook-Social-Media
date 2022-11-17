using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace PrjWinCsFreindBookLounisRafaa
{
    public partial class MessageSender : System.Web.UI.Page
    {
        static OleDbConnection mycon;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                // se connecter a la base de donnees
                mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");
                mycon.Open();

                string sql = "SELECT Nom, Email, NumMembre FROM Membres";

                OleDbCommand mycmd = new OleDbCommand(sql, mycon);
                OleDbDataReader myRder = mycmd.ExecuteReader();

                while (myRder.Read() == true)
                {
                    ListItem itm = new ListItem();
                    itm.Text = myRder["Nom"].ToString() + " ( " + myRder["Nom"].ToString() + " )";
                    itm.Value = myRder["NumMembre"].ToString();
                    lstDestinataire.Items.Add(itm);
                }
                myRder.Close();
                mycon.Close();
            }
            
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            int refEnvoi = Convert.ToInt32(Session["MembreId"]);
            int refRecev = Convert.ToInt32(lstDestinataire.SelectedValue);
            string tit = txtTitre.Text.Trim();
            string mess = txtMessage.Text.Trim();


            mycon.Open();
            string sql = "INSERT INTO Messages(Titre, Message,Envoyeur,Receveur) " +
                "VALUES(@titre,@message,@refE,@refD)";

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.Parameters.AddWithValue("titre", tit);
            mycmd.Parameters.AddWithValue("message", mess);
            mycmd.Parameters.AddWithValue("refE", refEnvoi);
            mycmd.Parameters.AddWithValue("refD", refRecev);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Server.Transfer("Acceuil.aspx");
        }

        protected void txtTitre_TextChanged(object sender, EventArgs e)
        {

        }
    }

    
}