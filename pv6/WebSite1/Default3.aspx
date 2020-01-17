<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:Label ID="Label1" runat="server" Text="Podsumowanie zamówienia: "></asp:Label>

            <br />
            <asp:Label ID="Label2" runat="server" Text="treść zamówienia"></asp:Label>


            <br />
            <br />
            ==================<br /><asp:Label ID="Label4" runat="server" Text="Aby złożyć zamówienie zaloguj się!"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Jesteś zalogowany więc wystarczy potwierdzić:" Visible="False"></asp:Label><br />
            <asp:Button ID="Button1" runat="server" Text="Zamawiam!" Visible="False" OnClick="Button1_Click" />


            <asp:Button ID="Button2" runat="server" Text="Powrót na główną stronę" Visible="False" OnClick="Button2_Click" />


            <br />
            


        </div>
    </form>
</body>
</html>
