using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SARMS
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click1(object sender, EventArgs e)
        {
            //string DatabaseConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;

            /*
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)/MSSQLLocalDB; AttachDbFilename = C:/Users/godwi/OneDrive/Documents/Visual Studio 2017/Projects/SARMS/SARMS/App_Data/Users.mdf; Integrated Security = True;");


            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) From lecturer Where Username ='" + username.Text + "' and Password ='" + password.Text + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("webpages/LecturerHome/LecturerHP.aspx");
            }
            else
            {
                Console.Write("error");
            }
            */

            string strcon = @"Data Source=(LocalDB)/MSSQLLocalDB;AttachDbFilename=C:/Users/godwi/OneDrive/Documents/Visual Studio 2017/Projects/SARMS/SARMS/App_Data/Users.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand com = new SqlCommand("CheckUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("Username", username.Text);
            SqlParameter p2 = new SqlParameter("Password", password.Text);

            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();

            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
            }

        }
    }
}