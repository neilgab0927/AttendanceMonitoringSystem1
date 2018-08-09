<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="ClassRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.ClassRecord1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style37 {
            width: 132px;
        }
        .auto-style38 {
            width: 167px;
        }
        .auto-style39 {
            width: 177px;
        }
        .auto-style41 {
            width: 196px;
        }
        .auto-style42 {
            width: 189px;
        }
        .auto-style43 {
            width: 187px;
        }
        .auto-style44 {
            width: 155px;
        }
        .auto-style45 {
            width: 100%;
        }
        .auto-style46 {
            width: 61px;
        }
        .auto-style47 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="pnlStudent" BorderStyle="solid" BorderWidth="3px">
        <table style="text-align: center; margin: 20px; width:100%">
            <tr>
                
                <td class="auto-style46">
                    <asp:Button runat="server" ID="btnRegisterNew" Text="New Student" Width="115px" CssClass="auto-style47" OnClick="btnRegisterNew_Click" />
                </td>
                <td></td>
            </tr>
        </table>
        <table style="text-align: center; margin: 20px; " class="auto-style45">
            <tr>
                <th class="auto-style37">ID</th>
                <th class="auto-style38">Student Number</th>
                <th class="auto-style39">Last Name</th>
                <th class="auto-style41">First Name</th>
                <th class="auto-style42">Middle Name</th>
                <th class="auto-style43">Program</th>
                <th class="auto-style44">Year</th>
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
                       <td>
                            <%--<asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">
                                <img width="22" height="22" src="layout/images/icons/update.png" style="margin-left: 10px; margin-right: 10px;" alt="Update" title="Update"/>
                            </asp:LinkButton>

                            <asp:LinkButton ID="lnkRemoveUser" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to delete the selected records?')">
                                <img width="22" height="22" src="layout/images/icons/delete.png" style="margin-left: 10px;" alt="Remove" title="Remove"/>
                            </asp:LinkButton>--%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </asp:Panel>
</asp:Content>
