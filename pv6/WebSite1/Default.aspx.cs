using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["login"]!=null){
            Response.Write("Jesteś zalogowany jako " + HttpContext.Current.Session["login"]);
            if (HttpContext.Current.Session["admin"].ToString() == "yes")
            {
                Button3.Visible = true;
                Button5.Visible = true;
                Button2.Visible = true;
            }
        }
        else
        {
            Button4.Visible = false;
        }

    }
       

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        Response.Redirect("~/Default2.aspx?zamow=" + row.Cells[1].Text+"&xd="+ row.Cells[6].Text);
        //HttpContext.Current.Session["ilosc"] = row.Cells[6].Text;
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/logowanie.aspx?");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zamowienia.aspx?");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/hurtownia.aspx?");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        HttpContext.Current.Session.Clear();
        Response.Redirect("~/Default.aspx?");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/users.aspx?");
    }
}