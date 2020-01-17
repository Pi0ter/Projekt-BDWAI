<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       <asp:SqlDataSource
          id="SqlDataSource1"
          runat="server"
          DataSourceMode="DataReader"
          ConnectionString="<%$ ConnectionStrings:projektConnectionString %>"
          SelectCommand="select magazyn.id,katalog.id as 'NR katalogowy', katalog.nazwa, katalog.pochodzenie, katalog.producent,magazyn.ilosc from dbo.magazyn inner join dbo.katalog on magazyn.id_kat = katalog.id" OnSelecting="SqlDataSource1_Selecting">
      </asp:SqlDataSource>

      <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="NR katalogowy" HeaderText="NR katalogowy" InsertVisible="False" ReadOnly="True" SortExpression="NR katalogowy" />
              <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
              <asp:BoundField DataField="pochodzenie" HeaderText="pochodzenie" SortExpression="pochodzenie" />
              <asp:BoundField DataField="producent" HeaderText="producent" SortExpression="producent" />
              <asp:BoundField DataField="ilosc" HeaderText="ilosc" SortExpression="ilosc" />
          </Columns>
      </asp:GridView><br />
            <asp:Button ID="Button4" runat="server" Text="Zniszcz sesje" OnClick="Button4_Click" />
            <asp:Button ID="Button1" runat="server" Text="logowanie / rejestracja" OnClick="Button1_Click" />
            <br />
            
            <br />
            ===============================================
            <br />
            Dostępne po zalogowaniu na konto z uprawnieniami administratorskimi
            <br />
            <asp:Button ID="Button3" runat="server" Text="Hurtownia" OnClick="Button3_Click" Visible="False" />
            <asp:Button ID="Button5" runat="server" Text="Uzytkownicy" OnClick="Button5_Click" Visible="False" />
            <asp:Button ID="Button2" runat="server" Text="Zamowienia" OnClick="Button2_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
