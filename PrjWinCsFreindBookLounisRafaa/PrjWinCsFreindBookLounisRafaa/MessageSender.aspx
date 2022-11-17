<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageSender.aspx.cs" Inherits="PrjWinCsFreindBookLounisRafaa.MessageSender" %>

<!DOCTYPE html>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 1114px;
        }
        .auto-style3 {
            width: 840px;
            background-color: #BBCCFF;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
        <h1 class="auto-style1">&nbsp;<strong><em>FreindBook</em></strong> (envoi un Message a ton ami(e) ou ton Amoureux(e) )</h1>
    <hr class="auto-style2" />
    <br />
    <form id="form1" runat="server">
     <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style4"><strong>Destinataire : </strong></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="lstDestinataire" runat="server" Height="16px" Width="546px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><strong>Titre Message :</strong></td>
                <td>
                    <asp:TextBox ID="txtTitre" runat="server" Width="540px" OnTextChanged="txtTitre_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top"><strong>Contenu Message:</strong></td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="459px" TextMode="MultiLine" Width="540px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnEnvoyer" runat="server"  Text="Envoyer" OnClick="btnEnvoyer_Click" />
                </td>
                <td>
                    <asp:Button ID="btnEffacer" runat="server" Text="Recommencer" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
