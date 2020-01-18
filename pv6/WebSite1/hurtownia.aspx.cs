using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hurtownia : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        int idDod = Int32.Parse(row.Cells[1].Text.ToString());
        int ilosc = Int32.Parse(TextBox1.Text);

        con.Open();
        //ilosc = Int32.Parse(Request.QueryString["zamow"]);
        string command = "insert into magazyn values ("+idDod+","+ilosc+")";
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        con.Close();
        Response.Write("Pomyślnie dodano przedmiot do magazynu.");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default4.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}