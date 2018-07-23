using AttendanceMonitoringSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    public partial class Main : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Users user = (Users)Cache["user"];
                if(user==null)
                {
                    Response.Redirect("LogIn.aspx");
                }
                Label1.Text = "Welcome " + user.Username;
            }
            
        }
    }
}