using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Cakes : System.Web.UI.Page
    {
        string userIdString = HttpContext.Current.User.Identity.Name;
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (userIdString == "")
                Response.Redirect("Logon.aspx");

        }

        protected void InsertOrder(object sender, EventArgs e)
        {
            var button = sender as ImageButton;
            var theValue = button.Attributes["productId"].ToString();
            int productId = Int32.Parse(theValue);
            int userId = Int32.Parse(userIdString);
            int numOfItems = 0;
            string message = string.Empty;

            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("Insert_Order"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@user_id", userId);
                    cmd.Parameters.AddWithValue("@product_id", productId);
                    cmd.Connection = con;
                    con.Open();
                    numOfItems = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }

                message = "Add to your cart" /*+ numOfItems*/;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }
        }

    }
}