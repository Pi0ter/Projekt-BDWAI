using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moderacja : System.Web.UI.Page
{
    int mod_id;
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        mod_id = Int32.Parse(Request.QueryString["idzamowienia"].ToString());

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        string command = "delete from zamowienia where id = " + mod_id;

        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();


        con.Close();
        Response.Redirect("~/Default.aspx");

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}