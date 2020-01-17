<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Obecni klienci:"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DataSourceMode="DataReader" OnSelecting="SqlDataSource1_Selecting" SelectCommand="select * from users inner join klienci on users.id_klienta = klienci.id"></asp:SqlDataSource>
        </div>

      <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
              <asp:BoundField DataField="haslo" HeaderText="haslo" SortExpression="haslo" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="id_klienta" HeaderText="id_klienta" SortExpression="id_klienta" />
              <asp:BoundField DataField="admin" HeaderText="admin" SortExpression="admin" />
              <asp:BoundField DataField="id1" HeaderText="id1" InsertVisible="False" ReadOnly="True" SortExpression="id1" />
              <asp:BoundField DataField="imie_nazwisko" HeaderText="imie_nazwisko" SortExpression="imie_nazwisko" />
              <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
          </Columns>
      </asp:GridView>
    </form>
</body>
</html>
