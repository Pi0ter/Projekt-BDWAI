<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dodawanie nowego przedmiotu:<br />
            Nazwa:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            Producent:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Pochodzenie:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Cena Katalogowa:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Zatwierdź" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
