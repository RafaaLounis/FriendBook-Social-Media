using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace PrjWinCsFreindBookLounisRafaa
{
    public partial class DeletMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection mycon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Me\source\repos\PrjWinCsFreindBookLounisRafaa\PrjWinCsFreindBookLounisRafaa\App_Data\FreindBook.mdb;Persist Security Info=True");
            mycon.Open();
            // se connecter a la base de donnees
           
            Int32 refMess = Convert.ToInt32(Request.QueryString["refM"]);

            string sql = "DELETE * FROM Messages WHERE NumMessage = " + refMess;

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();

            mycon.Close();
            
            Server.Transfer("Acceuil.aspx");
        }
    }
}