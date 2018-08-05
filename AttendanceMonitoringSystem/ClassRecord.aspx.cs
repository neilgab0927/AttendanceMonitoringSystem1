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


            //if (e.CommandName == "Edit")
            //{
            //    //pnlStudent.Visible = true;
            //    isStudentFieldsEnabled(true);

            //    lblIdAddEdit.Text = lblId.Text;
            //    txtStudentNumber.Text = lblStudentId.Text;
            //    txtStudentFirstName.Text = lblStudentLastName.Text;
            //    txtStudentMiddleName.Text = lblStudentFirstName.Text;
            //    txtStudentLastName.Text = lblStudentMiddleName.Text;
            //    // set program
            //    txtProgram0.Text = lblStudentProgram.Text;
            //    // set admissionYear
            //    DateTime dt = Convert.ToDateTime(lblStudentAdmissionYear.Text);
            //    txtAdmissionYear0.Text = string.Format("{0:MMM dd, yyyy}", dt); 

            //}

            if (e.CommandName == "Delete")
            {
                db.DeleteStudentById(Convert.ToInt32(lblId.Text));
                LoadStudentList();
            }

        }
    }


}