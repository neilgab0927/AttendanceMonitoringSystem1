using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using AttendanceMonitoringSystem.Models;


namespace AttendanceMonitoringSystem
{
    public partial class LogIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            /// LblUser.Text = Session[""].ToString();
            ///LblPass.Text = Session["P@ssword"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess db = new DataAccess();

                var user = db.ValidateLogIn(TxtUser.Text, TxtPass.Text);

                if (user != null)
                {
                    Users _user = new Users
                    {
                        Id = user.Id,
                        Username = user.Username,
                        Password = user.Password
                    };

                    //Cache["user"] = _user;

                    Session["userName"] = _user.Username;


                    Response.Redirect("~/Registration.aspx");

                }
                else
                {
                    LblComment.Text = "UserId & Password Is not correct Try again..!!";
                }
            }
            catch (Exception ex)
            {

            }



            //try
            //{
            //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AMSconnect"].ToString());

            //    string uid = TxtUser.Text;
            //    string pass = TxtPass.Text;

            //    string qry = "select * from tb_users where Username='" + uid + "' and Password='" + pass + "'";
            //    //string qry = "select * from login where Username='" + uid + "' and Password='" + pass + "'";
            //    SqlCommand cmd = new SqlCommand(qry, con);

            //    con.Open();
            //    SqlDataReader reader = cmd.ExecuteReader();

            //    if (reader.HasRows)
            //    {
            //        while (reader.Read())
            //        {
            //            Users user = new Users
            //            {
            //                IDNumber = Convert.ToInt32(reader["id"]),
            //                Username = reader["username"].ToString(),
            //                Password = reader["password"].ToString()
            //            };
            //            Cache["user"] = user;
            //        }
            //        Response.Redirect("Main.aspx");
            //    }
            //    else
            //    {
            //        LblComment.Text = "UserId & Password Is not correct Try again..!!";

            //    }
            //    con.Close();
            //}
            //catch (Exception ex)
            //{

            //    Response.Write(ex.Message);
            //    Session.RemoveAll();

            //}
        }

    }
}
