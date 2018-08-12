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
            //LoadStudentList();
            Response.Redirect("LogIn.aspx");
        }

        #region Events

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            if (ValidateNewStudentSubmit())
            {
                //db.InsertUpdateStudent(Convert.ToInt32(lblIdAddEdit.Text), txtStudentNumber.Text, txtStudentFirstName.Text, 
                //    txtStudentMiddleName.Text, txtStudentLastName.Text, true);

                btnNewStudent_OnClick(sender, e);
                isStudentFieldsEnabled(false);
                LoadStudentList();
                ClearPanels();
            }
            else
            {
                isStudentFieldsEnabled(true);
            }
        }

        protected void btnNewStudent_OnClick(object sender, EventArgs e)
        {
            lblIdAddEdit.Text = "0";
            pnlStudentForm.Visible = true;
            btnSubmit.Enabled = true;

            ClearNewStudentFields();
            isStudentFieldsEnabled(true);

            lblStudentNumberAddEdit.ForeColor = System.Drawing.Color.Black;
            lblFirtsNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblMiddleNameAddEdit.ForeColor = System.Drawing.Color.Black;
            lblLastNameAddEdit.ForeColor = System.Drawing.Color.Black;
        }

        protected void rptrStudent_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            Label lblStudentId = (Label)e.Item.FindControl("lblStudentId");
            Label lblStudentLastName = (Label)e.Item.FindControl("lblStudentLastName");
            Label lblStudentFirstName = (Label)e.Item.FindControl("lblStudentFirstName");
            Label lblStudentMiddleName = (Label)e.Item.FindControl("lblStudentMiddleName");

            if (e.CommandName == "Edit")
            {
                pnlStudentForm.Visible = true;
                isStudentFieldsEnabled(true);

                lblIdAddEdit.Text = lblId.Text;
                txtStudentNumber.Text = lblStudentId.Text;
                txtStudentFirstName.Text = lblStudentLastName.Text;
                txtStudentFirstName.Text = lblStudentLastName.Text;
                txtStudentMiddleName.Text = lblStudentFirstName.Text;
                txtStudentLastName.Text = lblStudentMiddleName.Text;
            }

            if (e.CommandName == "Delete")
            {
                db.DeleteStudentById(Convert.ToInt32(lblId.Text));
                LoadStudentList();
            }

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

        private void ClearPanels()
        {
            pnlStudentForm.Visible = false;
        }
    }
}