using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nazwa = TextBox1.Text;
        string producent = TextBox2.Text;
        string pochodzenie = TextBox3.Text;
        int cena = Int32.Parse(TextBox4.Text);
        if (TextBox4.Text == null)
            cena = 1;
        con.Open();
        //ilosc = Int32.Parse(Request.QueryString["zamow"]);
        string command = "insert into katalog values ('"+nazwa+"','"+producent+"','"+pochodzenie+"',"+cena+")";
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        con.Close();
        Response.Redirect("~/hurtownia.aspx");




    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}