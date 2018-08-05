<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AttendanceMonitoringSystem.Registration" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .RegsForm {
            width: 100%;
        }

        .auto-style14 {
            height: 333px;
            width: 498px;
            margin-top: 0px;
        }

        .auto-style41 {
            width: 1002px;
            height: 29px;
        }

        .auto-style42 {
            width: 379px;
        }

        .auto-style45 {
            width: 111px;
        }

        .auto-style46 {
            width: 111px;
            height: 28px;
        }

        .auto-style47 {
            width: 172px;
            height: 28px;
        }

        .auto-style48 {
            width: 46px;
        }

        .auto-style49 {
            width: 172px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <table style="width: 100%">
        <tr>
            <td>
                <h2 class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      REGISTRATION FORM </h2>
            </td>
        </tr>
    </table>

    <table style="width: 100%" class="RegsForm">
        <tr>
            <td class="auto-style48"></td>
            <td class="auto-style42">
                <asp:Button runat="server" ID="btnRegisterNew" Text="New" OnClick="btnRegisterNew_OnClick" Width="89px" />
                <asp:Panel ID="pnlStudentFields" runat="server" Visible="false">

                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblIdAddEdit" Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style46">

                                <asp:Label runat="server" ID="lblStudentNumberAddEdit">Student Number:</asp:Label>
                            </td>

                            <td class="auto-style47">
                                <asp:TextBox runat="server" ID="txtStudentNumber" Width="220px" /></td>
                        </tr>

                        <tr>
                            <td class="auto-style45">
                                <asp:Label runat="server" ID="lblFirtsNameAddEdit">First Name:</asp:Label>

                            </td>
                            <td class="auto-style49">
                                <asp:TextBox runat="server" ID="txtStudentFirstName" Width="222px" />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style45">
                                <asp:Label runat="server" ID="lblMiddleNameAddEdit">Middle Name:</asp:Label></td>
                            <td class="auto-style49">
                                <asp:TextBox runat="server" ID="txtStudentMiddleName" Width="221px" /></td>
                        </tr>

                        <tr>
                            <td class="auto-style45">
                                <asp:Label runat="server" ID="lblLastNameAddEdit">Last Name:</asp:Label></td>
                            <td class="auto-style49">
                                <asp:TextBox runat="server" ID="txtStudentLastName" Width="221px" /></td>
                        </tr>

                        <tr>
                            <td class="auto-style45">
                                <asp:Label ID="lblProgramAddEdit0" runat="server">Program:</asp:Label></td>
                            <td class="auto-style49">
                                <asp:TextBox runat="server" ID="txtProgram0" Width="221px" /></td>
                        </tr>

                        <tr>
                            <td class="auto-style45">
                                <asp:Label ID="lblAdmissionYearAddEdit0" runat="server">Admission Year:</asp:Label></td>
                            <td class="auto-style49">
                                <asp:TextBox runat="server" ID="txtAdmissionYear0" Width="221px" />
                                <!-- TargetControlID = yung tatargetin niyang textbox -->
                                <ajaxToolkit:CalendarExtender ID="CalendatExtender6" runat="server"
                                    TargetControlID="txtAdmissionYear0"
                                    Format="MMM dd, yyyy"
                                    PopupPosition="BottomRight" PopupButtonID="Image1" />
                            </td>


                        </tr>
                    </table>


                    <tr>
                        <td class="auto-style45">
                            <asp:Label ID="LblNote" runat="server" BorderStyle="None" />&nbsp;</td>
                        <td class="auto-style49"></td>
                    </tr>

                    <tr>
                        <td class="auto-style45"></td>
                        <td class="auto-style49">
                            <asp:Button runat="server" ID="btnRegister" Text="Register" OnClick="btnRegister_OnClick" Width="89px" />


                        </td>
                    </tr>
                </asp:Panel>

            </td>
        </tr>

    </table>

    </td>

            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Panel runat="server" ID="pnlStudent" BorderStyle="solid" BorderWidth="3px" Visible="False">
                                <table class="sortable jTPS" style="text-align: center; margin: 20px">
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
                        </td>
                    </tr>
                </table>
            </td>

    </tr>
    </table>



</asp:Content>
