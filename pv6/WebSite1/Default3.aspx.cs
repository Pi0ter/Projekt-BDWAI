using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;
    static int id_towaru;
    static int ilosc_towaru;
    static int zostalo;

    protected void Page_Load(object sender, EventArgs e)
    {
        id_towaru = Int32.Parse(Request.QueryString["zamow"]);
        ilosc_towaru = Int32.Parse(Request.QueryString["ilosc"]);
        zostalo = Int32.Parse(Request.QueryString["xd"]);
        

        if (HttpContext.Current.Session["login"] != null)
        {
            Button1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = false;
        }
       
        Label2.Text = "> ";
        con.Open();
        

        //string command = "Select * from magazy inner join katalog on magazyn.id_kat = katalog.id ";
        string command = "select katalog.nazwa, katalog.pochodzenie, katalog.producent, magazyn.ilosc from dbo.magazyn inner join dbo.katalog on magazyn.id_kat = katalog.id ";

        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Label2.Text += " Nazwa: " + dr[0].ToString();
        Label2.Text += " Pochodzenie: "+dr[1].ToString();
        Label2.Text += " Producent: "+dr[2].ToString();
        Label2.Text += " Zakupiona ilosc: "+ilosc_towaru.ToString();
        //Response.Redirect("~/Default.aspx?xd=" + dr[4].ToString());
        //int temp = Int32.Parse(dr[3].ToString());
        //Response.Redirect("~/Default.aspx?xd="+temp.ToString());
        zostalo = zostalo - ilosc_towaru;


        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Label1.Text = "Złożone zamówienie zostało przekazane do realzacji! średni czas oczekiwania to 3 lata!";
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Button2.Visible = true;

        con.Open();
        int id_klienta = Int32.Parse(HttpContext.Current.Session["id"].ToString());
        string command = "Insert into zamowienia values ("+id_klienta+","+ id_towaru+","+ilosc_towaru+",'Example Date','Example date + 3 years')";

        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();

        con.Close();
        con.Open();

        command = "Update magazyn set ilosc = " + zostalo + " where id =" + id_towaru;
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        con.Close();



    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Default.aspx");
    }
}