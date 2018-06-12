using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using localhost;
using System.IO;
public partial class filelogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string usr;
            usr = Request.Cookies["loginname"].Value;
            Response.Redirect("file.aspx");

        }
        catch
        {
            con.Open();
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = Request.Form["email"].Trim();
        bool t = false;
        string check = "select * from [table] where name='" + Request.Form["name"] + "'and pw='" + Request.Form["email"] + "'and email='" + Request.Form["password"] + "'";
        SqlCommand cmd = new SqlCommand(check, con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {

            t = true;

        }
        if (t == true)
        {
            HttpCookie co = new HttpCookie("loginname", Request.Form["name"]);
            if (CheckBox1.Checked == true)
            {
                Response.Cookies.Add(co);
                co.Expires = DateTime.Now.AddMinutes(5);
            }
            Response.Redirect("file.aspx");
        }
        else
        {
            Label5.Visible = true;
        }




    }
    protected void adminlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");

    }
}