<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zamowienia.aspx.cs" Inherits="zamowienia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Twoje zamówienia!:"></asp:Label><br />
      
       <asp:SqlDataSource
          id="SqlDataSource1"
          runat="server"
          DataSourceMode="DataReader"
          ConnectionString="<%$ ConnectionStrings:projektConnectionString %>"
          SelectCommand="SELECT * FROM [zamowienia]" OnSelecting="SqlDataSource1_Selecting">
      </asp:SqlDataSource>

      <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="id_klienta" HeaderText="id_klienta" SortExpression="id_klienta" />
              <asp:BoundField DataField="id_magazyn" HeaderText="id_magazyn" SortExpression="id_magazyn" />
              <asp:BoundField DataField="ilosc" HeaderText="ilosc" SortExpression="ilosc" />
              <asp:BoundField DataField="data_zlozenia" HeaderText="data_zlozenia" SortExpression="data_zlozenia" />
              <asp:BoundField DataField="data_zakonczenia" HeaderText="data_zakonczenia" SortExpression="data_zakonczenia" />
          </Columns>
      </asp:GridView>
        <br />
        Wybierz wpis aby rozpocząć jego moderację!
  </div>
    </form>
</body>
</html>
