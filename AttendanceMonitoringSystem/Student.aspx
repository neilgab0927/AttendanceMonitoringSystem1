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

        .auto-style17 {
            height: 15px;
        }

        .auto-style23 {
            width: 100%;
            height: 363px;
        }

        .auto-style30 {
            width: 53%;
            height: 294px;
        }

        .auto-style31 {
            width: 121px;
            height: 294px;
        }

        .auto-style32 {
            width: 65px;
            height: 294px;
        }

        .auto-style35 {
            width: 543px;
            height: 136px;
        }

        .auto-style36 {
            width: 118px;
        }

        .auto-style37 {
            width: 543px;
            height: 153px;
        }
    </style>
    <title>Student
    </title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel runat="server" ID="pnlNewStudent">
        <form>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblIdAddEdit" Visible="False" />
                        <asp:Label runat="server" ID="lblStudentNumberAddEdit">Student Number:</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtStudentNumber"/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblFirtsNameAddEdit">First Name:</asp:Label></td>

                    <td>
                        <asp:TextBox runat="server" ID="txtStudentFirstName"/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblMiddleNameAddEdit">Middle Name:</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtStudentMiddleName"/></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblLastNameAddEdit">Last Name:</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtStudentLastName"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnNewStudent" Text="New Student" class="button-blue" OnClick="btnNewStudent_OnClick" />
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="button-blue" OnClick="btnSubmit_OnClick" />
                    </td>
                </tr>

            </table>
        </form>
    </asp:Panel>


<hr />

    <asp:Panel runat="server" ID="pnlStudentTable">
        <h2>List of Students</h2>
        <table class="sortable" style="text-align: center; margin: 20px">
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

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </asp:Panel>
</asp:Content>
