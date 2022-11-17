<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageReader.aspx.cs" Inherits="PrjWinCsFreindBookLounisRafaa.MessageReader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align:left;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="509px">
        <div>
            <h1 class="auto-style1"><strong><em>FreindBook</em></strong> - MESSAGERIE</h1>
        </div>
        <div class="auto-style2">
            
            <asp:Table ID="tabMessage" align="center" runat="server" BackColor="#FFCEFF" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" GridLines="Both" Height="197px" Width="869px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="20%">Titre : </asp:TableCell>
                    <asp:TableCell ID="cellTitre" runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">De : </asp:TableCell>
                    <asp:TableCell ID="cellEnvoyeur" runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Date : </asp:TableCell>
                    <asp:TableCell ID="cellDate" runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Height="300px" VerticalAlign="Top">
                    <asp:TableCell runat="server">Contenu : </asp:TableCell>
                    <asp:TableCell ID="cellContenu" runat="server"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
              
        </div>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink1" runat="server"><a href="/Acceuil.aspx">Retour A la Page d'Acceuil</a></asp:HyperLink>
    </form>
</body>
</html>
