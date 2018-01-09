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
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("updateProductsTable"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                   
                    cmd.Connection = con;
                    con.Open();
                    int s=Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
        }
    }
}