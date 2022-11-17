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
    public partial class MessageReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");

            mycon.Open();
            Int32 refMess = Convert.ToInt32(Request.QueryString["refM"]);
            // string sql = "SELECT * FROM Messages WHERE RefMessage = " + refMess;

            string sql = "SELECT Messages.*, Membres.Nom FROM Membres, Messages " +
            "WHERE Membres.NumMembre = Messages.Envoyeur AND Messages.NumMessage = " + refMess;

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myRder = mycmd.ExecuteReader();

            if (myRder.Read() == true)
            {
                cellTitre.Text = myRder["Titre"].ToString();
                cellEnvoyeur.Text = myRder["Nom"].ToString();
                cellDate.Text = myRder["Date2Creation"].ToString();
                cellContenu.Text = myRder["Message"].ToString();
            }
            myRder.Close();
            sql = "UPDATE Messages SET NouveauUser=False WHERE NumMessage = " + refMess;
            OleDbCommand mycmd2 = new OleDbCommand(sql, mycon);
            mycmd2.ExecuteNonQuery();
            mycon.Close();
        }
    }
}