<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Przetwarzanie zamówienia: " Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="ID" Visible="False"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="Maksymalna ilosc: "></asp:Label>
            
            <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>   <br />
            <asp:Label ID="Label5" runat="server" Text="Zamawiana ilosc: "></asp:Label>
         
            
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged">1</asp:TextBox><br />
         
            
            <asp:Button ID="Button1" runat="server" Text="Zamów!" OnClick="Button1_Click" />
         
            
        </div>
        
    </form>
</body>
</html>
