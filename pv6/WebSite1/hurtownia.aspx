<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hurtownia.aspx.cs" Inherits="hurtownia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button2" runat="server" Text="Powrót na główną" OnClick="Button2_Click" />
        </p>
        <p>
            Dostępne towary:</p>
        <p>
            Ilość:
            <asp:TextBox ID="TextBox1" runat="server">1</asp:TextBox>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DataSourceMode="DataReader" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [katalog]"></asp:SqlDataSource>
        <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                <asp:BoundField DataField="producent" HeaderText="producent" SortExpression="producent" />
                <asp:BoundField DataField="pochodzenie" HeaderText="pochodzenie" SortExpression="pochodzenie" />
                <asp:BoundField DataField="cenaKatalogowa" HeaderText="cenaKatalogowa" SortExpression="cenaKatalogowa" />
            </Columns>
      </asp:GridView>
        </p>
        <p>
            Wpisz zamawianą ilość, następnie wybierz towar aby go zamówić lub dodaj kolejny produkt do katologu</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Dodaj produkt do katalogu" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
