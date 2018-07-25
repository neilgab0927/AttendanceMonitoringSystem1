using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AttendanceMonitoringSystem.Models;

namespace AttendanceMonitoringSystem
{
    public partial class Student : System.Web.UI.Page
    {

        DataAccess db = new DataAccess();


        protected void Page_Load(object sender, EventArgs e)
        {
            LoadStudentList();
        }

        #region Events

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            if (ValidateNewStudentSubmit())
            {
                db.InsertUpdateStudent(Convert.ToInt32(lblIdAddEdit.Text), txtStudentNumber.Text, txtStudentFirstName.Text, txtStudentMiddleName.Text, txtStudentLastName.Text);

                btnNewStudent_OnClick(sender, e);
                isStudentFieldsEnabled(false);
                LoadStudentList();
            }
            else
            {
                isStudentFieldsEnabled(true);
            }
        }

        protected void btnNewStudent_OnClick(object sender, EventArgs e)
        {
            ClearNewStudentFields();
            btnSubmit.Enabled = true;
            isStudentFieldsEnabled(true);

            lblStudentNumberAddEdit.ForeColor = System.Drawing.Color.Black;
            lblFirtsNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblMiddleNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblLastNameAddEdit.ForeColor = System.Drawing.Color.Black;
        }

        protected void rptrStudent_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            throw new NotImplementedException();
        }

        #endregion

        #region Functions

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

            return _valid;

        }

        private void LoadStudentList()
        {
            rptrStudent.DataSource = db.GetListOfStudents();
            rptrStudent.DataBind();
        }

        private void ClearNewStudentFields()
        {
            lblIdAddEdit.Text = "0";
            txtStudentNumber.Text = "";
            txtStudentFirstName.Text = "";
            txtStudentMiddleName.Text = "";
            txtStudentLastName.Text = "";
        }

        private void isStudentFieldsEnabled(bool value)
        {
            lblIdAddEdit.Enabled = value;
            txtStudentNumber.Enabled = value;
            txtStudentFirstName.Enabled = value;
            txtStudentMiddleName.Enabled = value;
            txtStudentLastName.Enabled = value;
        }

        #endregion

    }
}