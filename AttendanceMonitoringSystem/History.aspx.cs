﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    public partial class History : System.Web.UI.Page
    {
        DataAccess db = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(Session["userName"].ToString()))
                {
                    Response.Redirect("~/LogIn.aspx");
                }
                
                rptrHistory.DataSource = db.GetListOfHistory();
                rptrHistory.DataBind();
            }
            catch
            {
                Response.Redirect("~/LogIn.aspx");

            }

        }

        
    }
}