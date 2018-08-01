<%@ Page Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="AttendanceMonitoringSystem.Student" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style10 {
            width: 149px;
            height: 67px;
        }

        .auto-style12 {
            width: 482px;
            height: 67px;
        }

        .auto-style14 {
            height: 333px;
            width: 498px;
            margin-top: 0px;
        }

        .auto-style16 {
            height: 67px;
            width: 332px;
        }

        .auto-style38 {
        height: 28px;
    }
    </style>
    <title>Student
    </title>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

        <div class="container">
            <asp:Button runat="server" ID="btnNewStudent" Text="New Student" OnClick="btnNewStudent_OnClick" />
        </div>

    <asp:Panel runat="server" ID="pnlStudentForm" Visible="False">

        <table border="1">
            <tr>
                <td class="auto-style38">
                    <asp:Label runat="server" ID="lblIdAddEdit" Visible="False" />
                    <asp:Label runat="server" ID="lblStudentNumberAddEdit">Student Number:</asp:Label></td>
                <td class="auto-style38">
                    <asp:TextBox runat="server" ID="txtStudentNumber" /></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblFirtsNameAddEdit">First Name:</asp:Label></td>

                <td>
                    <asp:TextBox runat="server" ID="txtStudentFirstName" /></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblMiddleNameAddEdit">Middle Name:</asp:Label></td>
                <td>
                    <asp:TextBox runat="server" ID="txtStudentMiddleName" /></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblLastNameAddEdit">Last Name:</asp:Label></td>
                <td>
                    <asp:TextBox runat="server" ID="txtStudentLastName" /></td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2">
                    <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_OnClick" />
                </td>
            </tr>

        </table>
    </asp:Panel>


    <hr />

    <asp:Panel runat="server" ID="pnlStudentTable">
        <h2>List of Students</h2>
        <table class="sortable jTPS" style="text-align: center; margin: 20px">
            <tr>
                <th>ID</th>
                <th>Student Number</th>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Middle Name</th>
            </tr>
            <asp:Repeater runat="server" ID="rptrStudent" OnItemCommand="rptrStudent_OnItemCommand">
                <ItemTemplate>
                    <tr>

                        <td>
                            <asp:Label ID="lblId" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentId" runat="server" Text='<%#Bind("StudentId") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentLastName" runat="server" Text='<%#Bind("LastName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentFirstName" runat="server" Text='<%#Bind("FirstName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentMiddleName" runat="server" Text='<%#Bind("MiddleName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">
                                <img width="22" height="22" src="layout/images/icons/update.png" style="margin-left: 10px; margin-right: 10px;" alt="Update" title="Update"/>
                            </asp:LinkButton>

                            <asp:LinkButton ID="lnkRemoveUser" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to delete the selected records?')">
                                <img width="22" height="22" src="layout/images/icons/delete.png" style="margin-left: 10px;" alt="Remove" title="Remove"/>
                            </asp:LinkButton>
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </asp:Panel>
</asp:Content>
