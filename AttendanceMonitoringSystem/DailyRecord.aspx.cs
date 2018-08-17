using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    public partial class DailyRecord : System.Web.UI.Page
    {
        DataAccess db = new DataAccess(); 

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(Session["userName"].ToString()))
                    Response.Redirect("LogIn.aspx");

                LoadDailyRecord();
            }
            catch
            {
                Response.Redirect("LogIn.aspx");
            }

        }

        private void LoadDailyRecord()
        {
            rptrDailyRecord.DataSource = db.GetDailyRecord();
            rptrDailyRecord.DataBind();
        }

        protected void rptrDailyRecord_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Label lblDailyRecordProgram = (Label)e.Item.FindControl("lblDailyRecordProgram");

            var timeIn = Convert.ToDateTime(lblDailyRecordProgram.Text);
            var dateLate = timeIn.Date.AddHours(7.75);

            // if timeIn > 7:45 = late
            if(timeIn > dateLate)
            {

            }


        }
    }
}