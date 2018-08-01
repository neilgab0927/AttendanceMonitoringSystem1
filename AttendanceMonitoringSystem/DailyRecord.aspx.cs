﻿using System;
using System.Collections.Generic;
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
            LoadDailyRecord();
        }

        private void LoadDailyRecord()
        {
            rptrDailyRecord.DataSource = db.GetDailyRecord();
            rptrDailyRecord.DataBind();
        }
    }
}