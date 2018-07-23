using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TxtLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AMSconnect"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into regform values (@IDNumber, @Name, @Program, @Year, @Position)", con);
            cmd.Parameters.AddWithValue("LastName", TxtName.Text);
            cmd.Parameters.AddWithValue("IDNumber", TxtStudentNo.Text);
            cmd.Parameters.AddWithValue("Program", TxtProgram.Text);
            cmd.Parameters.AddWithValue("Year", TxtYear.Text);
            cmd.Parameters.AddWithValue("Position", ddlPosition.Text);
            cmd.ExecuteNonQuery();
            LblNote.Visible = true;
            LblNote.Text = "User registered successfully";

            TxtName.Text = "";
            TxtStudentNo.Text = "";
            TxtProgram.Text = "";
            TxtYear.Text = "";

        }
    }
}