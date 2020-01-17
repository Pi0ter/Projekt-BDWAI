using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logowanie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection("Data Source=SAMSUNGSMARTFRI;Initial Catalog=projekt;Integrated Security=True");
    static SqlDataReader dr;
    SqlCommand cmd;

    protected void Button1_Click(object sender, EventArgs e)
    {
        string login = TextBox1.Text;
        string haslo = TextBox2.Text;
        
        con.Open();
 
        string command = "select * from users where login = '" + login + "' and haslo = '" + haslo + "'";
       
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        //this.Session
        HttpContext.Current.Session["id"] = dr[0];
        HttpContext.Current.Session["login"] = dr[1];
        HttpContext.Current.Session["admin"] = dr[5];
        Response.Write(HttpContext.Current.Session["login"]);

        //HttpContext.Session.SetString("username", dr[1]);
        //Session("username") = dr[1];
        //Label4.Text = dr[0].ToString();
        //ilosc = Int32.Parse(Label4.Text);


        con.Close();

        Response.Write("Pomyślnie zalogowano! Zostaniesz przekierowany na stronę główną!");


        System.Threading.Thread.Sleep(1000);

        Response.Redirect("~/Default.aspx?");


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string login = TextBox3.Text;
        string haslo = TextBox4.Text;
        string email = TextBox5.Text;
        string imie_nazwisko = TextBox6.Text;
        string adres = TextBox7.Text;

        con.Open();
        int last;
        string command = "select count(*) from klienci";


        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        dr.Read();

        
        last = Int32.Parse(dr[0].ToString());
        last++;
        con.Close();
        con.Open();
        command = "Insert into klienci values ('" + imie_nazwisko + "','" + adres + "')";
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        con.Close();


        con.Open();
        command ="Insert into users values ('"+login+"','"+haslo+"','"+email+"',"+last+",'no')";
        cmd = new SqlCommand(command, con);
        dr = cmd.ExecuteReader();
        con.Close();

        Response.Write("Pomyślnie zarejstrowano! Zostaniesz przekierowany na stronę główną!");
        

        System.Threading.Thread.Sleep(1000);

        Response.Redirect("~/Default.aspx?");


    }
}