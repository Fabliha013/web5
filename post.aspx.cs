using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into [post]" + "(name,email,comment,dateofcomment) values(@name,@email,@comment,@dateofcomment)", con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@comment", TextBox3.Text);
        cmd.Parameters.AddWithValue("@dateofcomment", DateTime.Now);
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        Label2.Text = "Thanks For Giving Feedback as Comment on Website";

    }
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}