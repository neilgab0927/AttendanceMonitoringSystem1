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

        protected void btnRegisterNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

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

        protected void rptrStudent_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            Label lblStudentId = (Label)e.Item.FindControl("lblStudentId");
            Label lblStudentLastName = (Label)e.Item.FindControl("lblStudentLastName");
            Label lblStudentFirstName = (Label)e.Item.FindControl("lblStudentFirstName");
            Label lblStudentMiddleName = (Label)e.Item.FindControl("lblStudentMiddleName");

            // add program
            Label lblStudentProgram = (Label)e.Item.FindControl("lblStudentProgram");
            // add admissionYear
            Label lblStudentYear = (Label)e.Item.FindControl("lblStudentYear");
            Label lblStudentAdmissionYear = (Label)e.Item.FindControl("lblStudentAdmissionYear");

        }







    }
}