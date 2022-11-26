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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=C:\\Users\\kanik\\OneDrive\\Documents\\login.mdf;Integrated Security = True; Connect Timeout = 30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertUser = "insert into [Login] (first_name, last_name, city, contactno, email, password, user_id) values (@fname,@lname,@city,@contactno,@email,@pwd,@userid)";
            SqlCommand cmUser = new SqlCommand(insertUser, con);
            cmUser.Parameters.AddWithValue("@userid", userid.Text.ToString());
            cmUser.Parameters.AddWithValue("@fname", firstname.Text.ToString());
            cmUser.Parameters.AddWithValue("@lname", lastname.Text.ToString());
            cmUser.Parameters.AddWithValue("@city", city.Text.ToString());
            cmUser.Parameters.AddWithValue("@contactno", contactno.Text.ToString());
            cmUser.Parameters.AddWithValue("@email", email.Text.ToString());
            cmUser.Parameters.AddWithValue("@pwd", password.Text.ToString());

            cmUser.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
}