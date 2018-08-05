<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="ClassRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.ClassRecord1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="pnlStudent" BorderStyle="solid" BorderWidth="3px">
        <table style="text-align: center; margin: 20px">
            <tr>
                <th>ID</th>
                <th>Student Number</th>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Program</th>
                <th>Year</th>
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
                            <asp:Label ID="lblStudentProgram" runat="server" Text='<%#Bind("Program") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStudentYear" runat="server" Text='<%#Bind("Year") %>'></asp:Label>
                            <asp:Label ID="lblStudentAdmissionYear" runat="server" Text='<%#Bind("AdmissionYear") %>' Visible="false"></asp:Label>
                        </td>
                       <%-- <td>
                            <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">
                                <img width="22" height="22" src="layout/images/icons/update.png" style="margin-left: 10px; margin-right: 10px;" alt="Update" title="Update"/>
                            </asp:LinkButton>

                            <asp:LinkButton ID="lnkRemoveUser" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to delete the selected records?')">
                                <img width="22" height="22" src="layout/images/icons/delete.png" style="margin-left: 10px;" alt="Remove" title="Remove"/>
                            </asp:LinkButton>
                        </td>--%>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </asp:Panel>
</asp:Content>
