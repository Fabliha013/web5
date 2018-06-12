using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using localhost;
using System.IO;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            
            bool t = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            con.Open();
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
            SqlCommand cmd = new SqlCommand("insert into [table]"+"(name,pw,email,userpicture) values(@name,@pw,@email,@userpicture)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@pw",emailtxt.Text);
            cmd.Parameters.AddWithValue("@email", passtxt.Text);
            cmd.Parameters.AddWithValue("@userpicture", pic);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
                t = true;
            if (t == true)
            {
                Label3.Visible = true;
            }

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("fablihahaque21992@gmail.com", "notunkisukorauchit");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + nametxt.Text + " Thanks Ror Registration";
            msg.Body = "Hi,Thanks For Registration at HACK";
            string toaddress = emailtxt.Text;
            msg.To.Add(toaddress);
            string fromaddress = "HACK <fablihahaque21992@gmail.com > ";
            msg.From = new MailAddress(fromaddress);
                smtp.Send(msg);
                Label3.Text = "Your Registration is Successful You can Check your mail too";
                nametxt.Text = "";
                emailtxt.Text = "";


               

    }
}