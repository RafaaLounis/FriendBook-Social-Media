<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Identification.aspx.cs" Inherits="PrjWinCsFreindBookLounisRafaa.Identification" %>

<!DOCTYPE html>
<style>
    body {
  background-image: url("https://farm4.staticflickr.com/3322/3413777715_14ea926b75.jpg");
}
.container {
  width: 500px;
  height: 400px;
/*  Pour centrer le contenu d'un bloc  on utilise la prop text-align  */
  text-align: center; 
/*  Pour centrer un bloc on doit d'abord préciser le width et utiliser ensuite la prop margin  */
  margin : auto;
  background-color: rgba(68, 75, 84,0.8);
  margin-top: 150px;
  border-radius: 5px;
}
img {
  width: 150px;
  height:150px;
  border-radius:50%;
  margin-top:-70px;
  margin-bottom: 30px;
}
 input {
  height: 40px;
  width: 300px;
  font-size: 18px;
  font-family: "Lato";
  margin-bottom: 10px;
  border-radius: 5px;
  padding-left: 35px;
}
.form-input {
  position:relative;
}
#btnVerifier {
  width: 80px;
  height: 40px;
  padding: 5px;
  background-color: #D6D6D6;
  margin-top: 30px;
  margin-bottom: 30px
}
#submit:hover {
  cursor: pointer;
  background-color: #575C56;
  color: white;
}
    .auto-style1 {
        width: 190px;
        height: 162px;
    }
    .auto-style2 {
        position: relative;
        left: -11px;
        top: 17px;
        height: 316px;
        margin-bottom: 0px;
        width: 816px;
        text-align: left;
    }
    .auto-style3 {
        font-size: medium;
    }
#btnVerifier0 {
  width: 80px;
  height: 40px;
  padding: 5px;
  background-color: #D6D6D6;
  margin-top: 30px;
  margin-bottom: 30px
}
#Titre{
  margin-top: 100px;
}
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        width: 500px;
        height: 400px; /*  Pour centrer le contenu d'un bloc  on utilise la prop text-align  */
/*  Pour centrer un bloc on doit d'abord préciser le width et utiliser ensuite la prop margin  */background-color: rgba(68, 75, 84,0.8);
        margin-top: 150px;
        border-radius: 5px;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: auto;
    }
    .auto-style6 {
        color: #FF0000;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                   <div class="auto-style4">
                       <strong><em>
               <asp:Label runat="server" CssClass="Titre" style="color: #FF0000; font-size: xx-large" >FreindBook</asp:Label>
                       </em></strong>
           </div>
       <div class="auto-style5" id="Container">


             <img src="http://previews.123rf.com/images/stodolskaya/stodolskaya1511/stodolskaya151100027/49219342-Connexion-de-l-utilisateur-ou-l-acc-s-authentification-ic-ne-Banque-d'images.jpg" alt="image" class="auto-style1" /><div class="auto-style2">
                 <i class="fa fa-user fa-2x"aria-hidden="true" id="IConnexionContainer" aria-checked="undefined">

                 <asp:TextBox ID="txtUsername" placeholder="Identidiant" runat="server" Width="290px" OnTextChanged="txtUsername_TextChanged" ></asp:TextBox>        
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style6" ErrorMessage="reqUnsername" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                 <br />
                     
                <asp:TextBox ID="txtMot2passe" placeholder="Enter Mot de passe " runat="server" Width="286px" OnTextChanged="txtMot2passe_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reqPasseword" runat="server" CssClass="auto-style6" ErrorMessage="Le mot de passe est incorrect" ControlToValidate="txtMot2passe">*</asp:RequiredFieldValidator>
                 <br />
                <asp:Button ID="btnVerifier"  CssClass="btnVerifier" runat="server" Text="Connecter" OnClick="btnVerifier_Click" Width="294px" /><br />
<a href="/Inscription.aspx">Inscription</a>                 <br />
                </i>
                
                <br />
                 <asp:Label ID="lblErreur" runat="server" BorderColor="#000066" ForeColor="Red" CssClass="auto-style3" Height="30px"></asp:Label>

                 <br />

                </div>
              

       </div>
    </form>
</body>
</html>
