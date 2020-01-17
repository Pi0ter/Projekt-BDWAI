<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logowanie.aspx.cs" Inherits="logowanie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Zarejestruj się lub zaloguj jeśli masz już konto!</p>
        <p>
            Login:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
            &nbsp;</p>
        <p>
        
            Hasło:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Zaloguj!" OnClick="Button1_Click" />
        </p>
        <p>
            Jeśli nie masz konta...</p>
        <p>
            Login:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            Hasło:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            Email:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            Imie i nazwisko:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            Adres:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Zarejestruj się!" OnClick="Button2_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
