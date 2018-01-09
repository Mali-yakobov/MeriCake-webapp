using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Logon : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       
        protected void Logon_Click(object sender, EventArgs e)
        {
            int userId = 0;
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                Session["userID"] = userId.ToString();
                switch (userId)
                {
                    case -1:
                        Msg.Text = "Username and/or password is incorrect.";
                        //    Msg.Text = "Invalid credentials. Please try again.";
                        break;
                    default:
                        FormsAuthentication.RedirectFromLoginPage(userId.ToString(), Persist.Checked);
                        break;
                }
            }
        }
            
        

        protected void RegisterUser(object sender, EventArgs e)
        {
            int userId = 0;
            string userIdString;

            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", newUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", newPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                        cmd.Parameters.AddWithValue("@mobile", phone.Text.Trim());
                        cmd.Parameters.AddWithValue("@num_of_items", 0);
                        cmd.Parameters.AddWithValue("@sum", 0);

                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    
                    default:
                        message = "Registration successful." /*+ userId.ToString()*/;
                        userIdString = userId.ToString();  //Int32.Parse(userIdString);
                        FormsAuthentication.RedirectFromLoginPage(userIdString, Persist.Checked);
                        break;
                }

                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }
    }
}