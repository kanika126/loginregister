using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace loginregisterlogout
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=C:\\Users\\kanik\\OneDrive\\Documents\\login.mdf;Integrated Security = True; Connect Timeout = 30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgnBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string checkUser = "select user_id,email,first_name,last_name,city,contactno from [Login] where email=@email and password=@password";
            SqlCommand checkCmd = new SqlCommand(checkUser, con);
            checkCmd.Parameters.AddWithValue("@email", email.Text.ToString());
            checkCmd.Parameters.AddWithValue("@password", password.Text.ToString());
            SqlDataReader read = checkCmd.ExecuteReader();
            if(read.Read())
            {
                Session["user_id"] = read.GetValue(0).ToString();
                Session["email"] = read.GetValue(1).ToString();
                Session["first_name"] = read.GetValue(2).ToString();
                Session["last_name"] = read.GetValue(3).ToString();
                Session["city"] = read.GetValue(4).ToString();
                Session["contactno"] = read.GetValue(5).ToString();

                con.Close();
                Response.Redirect("Home.aspx");
            }
            else
            {
                errorMSG.Text = "Invalid email or password";
                errorMSG.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}