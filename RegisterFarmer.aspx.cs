using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _160245
{
    public partial class RegisterFarmer : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-UPJK2PQ;Initial Catalog=Farming;Integrated Security=True");
            try
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO registration (name,password,email) VALUES (@ID,@Password,@Email);",con);
                //cmd.Connection = con;
                //cmd.CommandText = ;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Parameters.Add("@ID", SqlDbType.NVarChar, 50).Value = t1.Text;
                cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 50).Value = TextBox3.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("FrontPage.aspx");
            }
            catch (Exception ex)
            {
                t1.Text = ex + "";

                Console.WriteLine("Exception: " + ex.Message);
            }


        }
    }
}