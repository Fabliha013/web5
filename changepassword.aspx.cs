using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("loginpage.aspx");
        }
        else
        {
            Label1.Text = Session["user"].ToString();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);

        String myquery = "select * from [table] where pw='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String pass;
        pass = ds.Tables[0].Rows[0]["email"].ToString();
        scon.Close();
        if (pass == TextBox1.Text)
        {
            if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
            {
                String updatepass = "update [table] set email='" + TextBox2.Text +
                "' where pw='" + Label1.Text + "'";
                SqlConnection s = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                Label2.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
            }
        }
        else
        {
            Label2.Text = "Invalid Username or Password - Cannot Change Password";


        }
    }
}