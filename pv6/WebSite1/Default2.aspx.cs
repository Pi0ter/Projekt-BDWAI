using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    int ilosc;
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        con.Open();
        //ilosc = Int32.Parse(Request.QueryString["zamow"]);
        cmd = new SqlCommand("SELECT [ilosc] FROM [magazyn] WHERE [id] = "+ Request.QueryString["zamow"],con );
        dr = cmd.ExecuteReader();
        dr.Read();
        Label4.Text = dr[0].ToString();
        ilosc = Int32.Parse(Label4.Text);
        con.Close();
    }

    //protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    //{
    ////    using (SqlDataReader rdrSql = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty))
    ////    {
    ////        while (rdrSql.Read())
    ////            Label4.Text += rdrSql["ilosc"].ToString();
    ////    }

    ////    ilosc = Int32.Parse(Label4.Text);
    ////    //ilosc = SqlDataSource1.
    //}

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int zam = Int32.Parse(TextBox1.Text);

        if (zam >= ilosc)
        {
            zam = ilosc;
        }
        else if (zam < 1)
        {
            zam = 1;
        }

        Response.Redirect("~/Default3.aspx?zamow=" + Request.QueryString["zamow"]+"&ilosc="+ zam.ToString());
    }
}
