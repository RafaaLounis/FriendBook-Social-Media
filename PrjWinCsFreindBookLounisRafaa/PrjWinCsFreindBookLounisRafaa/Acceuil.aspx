<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="PrjWinCsFreindBookLounisRafaa.Acceuil" %>

<!DOCTYPE html>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 613px;
        }
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div>
            <h1 class="auto-style1">
            <strong><em>FreindBook</em></strong>-ACCUEIL</h1>
            <hr class="auto-style2" />

            <asp:Label ID="lblInfos" runat="server" Font-Bold="True"></asp:Label>


            <br />
            <br />


        </div>
        <asp:Panel ID="Panel1" runat="server" Height="441px">
            <asp:Table ID="tableMessages" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" GridLines="Both" Width="1293px">
            </asp:Table>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server"><a href="/MessageSender.aspx">Ecrire Message</a> </asp:HyperLink>
        </asp:Panel>
    </form>
</body>
</html>
