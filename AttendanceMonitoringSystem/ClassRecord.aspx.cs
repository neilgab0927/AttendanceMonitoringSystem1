using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AttendanceMonitoringSystem.Models;

namespace AttendanceMonitoringSystem
{
    public partial class ClassRecord1 : System.Web.UI.Page
    {
        DataAccess db = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {

          LoadStudentList(); // sa method na to, nirereset yung id
          
        }
        private void LoadStudentList()
        {
            // si db yung instance ni DataAccess
            rptrStudent.DataSource = db.GetListOfStudents();
            rptrStudent.DataBind();
            //lblIdAddEdit.Text = "0";
        }





    }


}