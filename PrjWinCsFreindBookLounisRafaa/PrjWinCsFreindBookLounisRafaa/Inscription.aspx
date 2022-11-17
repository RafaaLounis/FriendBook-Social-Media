<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="PrjWinCsFreindBookLounisRafaa.Inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
            text-decoration: underline;
            font-size: x-large;
            color: #00FF00;
        }
        .auto-style5 {
            width: 861px;
            height: 502px;
        }
        .auto-style6 {
            width: 624px;
        }
        .auto-style7 {
            width: 624px;
            height: 64px;
        }
        .auto-style8 {
            height: 636px;
        }
        .auto-style9 {
            height: 73px;
        }
        </style>
</head>
<body style="height: 1166px">
    <form id="form1" runat="server" class="auto-style8">
        <div class="auto-style2">
        <div class="auto-style4">
            <strong><em>Sinscrire au Site FreindBook</em></strong></div>
            <br />
            <br />
            
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="552px" BackColor="#CCCCCC">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Nom :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNom" runat="server" Width="425px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" Width="425px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Telephone :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNumTel" runat="server" Width="425px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="Adresse :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtAdresse" runat="server" Width="425px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Mot2Passe" runat="server" Text="Mot de Passe :"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtMotPasse" runat="server" Width="425px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        
                        <asp:Button ID="btnEnregistrer" runat="server" Text="Enregistrer" Height="52px"  Width="266px" OnClick="btnEnregistrer_Click1" />
                        <br />
                        <asp:Label ID="lblErreur" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
