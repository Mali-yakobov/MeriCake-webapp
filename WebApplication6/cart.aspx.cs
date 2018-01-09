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
    public partial class cart : System.Web.UI.Page
    {
        string userIdString = HttpContext.Current.User.Identity.Name;
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<int, string> dict = new Dictionary<int, string>();
            dict.Add(1, "Makaroni");
            dict.Add( 2, "Chocolate");
            dict.Add(3, "Alfajores");
            dict.Add(4, "Vanilla");
            dict.Add(7, "WhiteChocolate");
            dict.Add(8, "Berries");
            dict.Add(9, "Cream");
            dict.Add(10, "Chocolate");
            dict.Add(11, "BerriesVanilla");
            dict.Add(12, "BlueberryPai");

            
            int userId = Int32.Parse(userIdString);
            int sum = 0;
            string message = string.Empty;
           
            List<string> result = new List<string>();

            string query = "SELECT * FROM orders_table WHERE user_id = @userId";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userId", userId);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            numOfItems.Text = dt.Rows.Count.ToString();

            if (dt.Rows.Count == 0)
            {
                TableRow row = new TableRow();
                TableCell cell1 = new TableCell();
                cell1.Text = "Not have orders yet.";
                row.Cells.Add(cell1);
                myTable.Rows.Add(row);
            }


            foreach (DataRow rrow in dt.Rows)
            {
                TableRow row1 = new TableRow();
                TableCell cell1 = new TableCell();
                TableCell cell2 = new TableCell();
                TableCell cell3 = new TableCell();
                int index = Convert.ToInt32(rrow.ItemArray[2]);
                cell1.Text = dict[index];
                cell2.Text = "12$";
                cell3.Text = rrow.ItemArray[3].ToString();
                row1.Cells.Add(cell1);
                row1.Cells.Add(cell2);
                row1.Cells.Add(cell3);
                myTable.Rows.Add(row1);
                sum = sum + 12;
            }
            Total.Text = sum.ToString()+"$";
            
            
        }


    }
}