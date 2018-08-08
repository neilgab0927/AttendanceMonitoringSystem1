using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AttendanceMonitoringSystem.Models;

namespace AttendanceMonitoringSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        DataAccess db = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(Session["userName"].ToString()))
                {
                    LoadStudentList();
                    isStudentFieldsEnabled(true);
                }

            }
            catch
            {
                Response.Redirect("~/LogIn.aspx");
            }
        }

        #region Events

        protected void btnRegister_OnClick(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(lblIdAddEdit.Text))
                lblIdAddEdit.Text = "0";

            if (ValidateNewStudentSubmit())
            {
                if (!validateDateFormat(txtAdmissionYear0, lblAdmissionYearAddEdit0))
                {
                    lblAdmissionYearAddEdit0.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // kapag walang error sa pagvalidate ni "ValidateNewStudentSubmit"
                db.InsertUpdateStudent(Convert.ToInt32(lblIdAddEdit.Text), txtStudentNumber.Text, txtStudentFirstName.Text,
                    txtStudentMiddleName.Text, txtStudentLastName.Text, true, txtProgram0.Text, Convert.ToDateTime(txtAdmissionYear0.Text));

                var nameOfStudent = $"{txtStudentLastName.Text}, {txtStudentFirstName.Text} {txtStudentMiddleName.Text}";
                var studentNumber = $"{txtStudentNumber.Text}";
                db.InsertHistory($"({ studentNumber }) { nameOfStudent } successfully added.", DateTime.Now);

                LoadStudentList();
                ClearPanels();
                ClearNewStudentFields();

            }
            else
            {
                isStudentFieldsEnabled(true);
            }
        }

        //protected void btnRegisterStudent_OnClick(object sender, EventArgs e)
        //{
        //    //lblIdAddEdit.Text = "0";
        //    //pnlStudent.Visible = true;
        //    btnRegister.Enabled = true;

        //    ClearNewStudentFields();

        //}

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


            if (e.CommandName == "Edit")
            {
                //pnlStudent.Visible = true;
                isStudentFieldsEnabled(true);

                lblIdAddEdit.Text = lblId.Text;
                txtStudentNumber.Text = lblStudentId.Text;
                txtStudentFirstName.Text = lblStudentLastName.Text;
                txtStudentMiddleName.Text = lblStudentFirstName.Text;
                txtStudentLastName.Text = lblStudentMiddleName.Text;
                // set program
                txtProgram0.Text = lblStudentProgram.Text;
                // set admissionYear
                DateTime dt = Convert.ToDateTime(lblStudentAdmissionYear.Text);
                txtAdmissionYear0.Text = string.Format("{0:MMM dd, yyyy}", dt);

            }

            if (e.CommandName == "Delete")
            {
                db.DeleteStudentById(Convert.ToInt32(lblId.Text));
                LoadStudentList();
            }

        }

        protected void btnRegisterNew_OnClick(object sender, EventArgs e)
        {
            isStudentFieldsEnabled(true);
            ClearNewStudentFields();
            //OnShown();
        }


        #endregion


        //private void OnShown()
        //{
        //    base.OnShown();
        //    this.btnRegisterNew_OnClick(null, null);
        //}

        #region Functions

        bool validateDateFormat(TextBox txtBoxDate, Label lblDate)
        {
            bool _valid = true;

            // Date
            DateTime dateFormat;
            bool _date = DateTime.TryParse(txtBoxDate.Text, out dateFormat);
            if (!_date)
            {
                lblDate.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblDate.ForeColor = System.Drawing.Color.Gray;

            return _valid;
        }

        private bool ValidateNewStudentSubmit()
        {
            bool _valid = true;

            if (string.IsNullOrWhiteSpace(txtStudentNumber.Text))
            {
                lblStudentNumberAddEdit.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblStudentNumberAddEdit.ForeColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(txtStudentFirstName.Text))
            {
                lblFirtsNameAddEdit.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblFirtsNameAddEdit.ForeColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(txtStudentMiddleName.Text))
            {
                lblMiddleNameAddEdit.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblMiddleNameAddEdit.ForeColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(txtStudentLastName.Text))
            {
                lblLastNameAddEdit.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblLastNameAddEdit.ForeColor = System.Drawing.Color.Black;


            if (string.IsNullOrWhiteSpace(txtProgram0.Text))
            {
                lblProgramAddEdit0.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblProgramAddEdit0.ForeColor = System.Drawing.Color.Black;


            if (string.IsNullOrWhiteSpace(txtAdmissionYear0.Text))
            {
                lblAdmissionYearAddEdit0.ForeColor = System.Drawing.Color.Red;
                _valid = false;
            }
            else
                lblAdmissionYearAddEdit0.ForeColor = System.Drawing.Color.Black;

            return _valid;
        }

        // bind List of StudentModel to repeater
        private void LoadStudentList()
        {
            // si db yung instance ni DataAccess
            rptrStudent.DataSource = db.GetListOfStudents();
            rptrStudent.DataBind();
            //lblIdAddEdit.Text = "0";
        }

        private void ClearNewStudentFields()
        {
            lblIdAddEdit.Text = "0"; // initialize id = 0 on load
            txtStudentNumber.Text = "";
            txtStudentFirstName.Text = "";
            txtStudentMiddleName.Text = "";
            txtStudentLastName.Text = "";
            txtProgram0.Text = "";
            txtAdmissionYear0.Text = "";

            isStudentFieldsEnabled(true);

            lblStudentNumberAddEdit.ForeColor = System.Drawing.Color.Black;
            lblFirtsNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblMiddleNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblLastNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblProgramAddEdit0.ForeColor = System.Drawing.Color.Black;
            lblAdmissionYearAddEdit0.ForeColor = System.Drawing.Color.Black;

        }

        private void isStudentFieldsEnabled(bool value)
        {
            lblIdAddEdit.Enabled = value;
            txtStudentNumber.Enabled = value;
            txtStudentFirstName.Enabled = value;
            txtStudentMiddleName.Enabled = value;
            txtStudentLastName.Enabled = value;
            txtProgram0.Enabled = value;
            txtAdmissionYear0.Enabled = value;
            pnlStudentFields.Visible = value;

        }

        #endregion

        private void ClearPanels()
        {
            //pnlStudent.Visible = false;
        }


    }
}