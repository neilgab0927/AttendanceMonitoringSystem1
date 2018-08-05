using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    public partial class DBC : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = System.DateTime.Now.ToString("dd/MM/yyyy");
        }

        protected void lnkRegistration_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void lnkStudent_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void lnkDailyRecord_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("DailyRecord.aspx");
        }

        protected void lnkHistory_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        protected void lnkClassRecord_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("ClassRecord.aspx");
        }
    }
}