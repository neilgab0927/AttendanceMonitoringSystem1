<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="ClassRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.ClassRecord1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style44 {
            width: 155px;
        }
        .auto-style47 {
            margin-left: 0px;
        }

        .back{

            background-image:url('Pictures/dbc.png');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            min-height:1000px;
            min-width:1000px ;
            width:100%;
            height:100%;
            margin:0 auto;

        }
        .auto-style48 {
            width: 138px;
        }
        .auto-style49 {
            width: 92%;
        }
        .auto-style50 {
            width: 95%;
            height: 131px;
        }
        .auto-style51 {
            width: 65px;
        }
        .auto-style55 {
            width: 252px;
        }
        .auto-style56 {
            width: 252px;
        }
        .auto-style57 {
            width: 252px;
        }
        .auto-style58 {
            width: 193px;
        }
        .auto-style59 {
            width: 252px;
        }
        .auto-style60 {
           
        }
        .auto-style62 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style63 {
            background-image: url('Pictures/dbc.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            min-height: 1000px;
            min-width: 1000px;
            width: 100%;
            height: 709%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style63">
        <asp:Panel runat="server" ID="pnlStudent"  BorderWidth="0px" CssClass="auto-style60" Height="917px" Width="100%">

            <table class="auto-style62">
                <tr>
                    <td>
                       <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          Class Record</h2>
                    </td>
                </tr>
            </table>

        <table style="text-align: center; margin: 0px; " class="auto-style49">
            <tr>
                
                <td class="auto-style48">
                    &nbsp;&nbsp;
                    <asp:Button runat="server" ID="btnRegisterNew" Text="New Student" Width="115px" CssClass="auto-style47" OnClick="btnRegisterNew_Click" />
                </td>
                <td></td>
            </tr>
        </table>
        <table style="text-align: center; margin: 20px; " class="auto-style50">
            <tr>
                <th class="auto-style51">ID</th>
                <th class="auto-style58">Student Number</th>
                <th class="auto-style57">Last Name</th>
                <th class="auto-style55">First Name</th>
                <th class="auto-style56">Middle Name</th>
                <th class="auto-style59">Program</th>
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
   </div>
</asp:Content>
