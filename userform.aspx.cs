using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class userform : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("loginpage.aspx");
        }
        else
        {
            con.Open();
            showdata();

        }
        


    }
    public void showdata()
    {
        
       
        cmd.CommandText = "select * from [table] where pw='" + Session["user"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label2.Text = ds.Tables[0].Rows[0]["name"].ToString();
        Label1.Text = ds.Tables[0].Rows[0]["pw"].ToString();

        cmd.CommandText = "select userpicture from [table] where pw='" + Session["user"] + "'";
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                byte[] imgdata = (byte[])dr["userpicture"];
                String img = Convert.ToBase64String(imgdata, 0, imgdata.Length);
                Image1.ImageUrl = "Data:image/jpg;base64," + img;

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("upload.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        Session["user"] = null;
        Response.Redirect("loginpage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
       
    }
}