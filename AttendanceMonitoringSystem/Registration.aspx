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
            width: 100%;
            height: 29px;
        }

        .auto-style42 {
            width: 535px;
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

        .auto-style49 {
            width: 172px;
        }
        .auto-style50 {
            width: 42px;
        }
        .auto-style51 {
            width: 100%;
        height: 233px;
            margin-right: 0px;
        }
        .auto-style52 {
            width: 77px;
        }
        
        .back{

            background-image:url('Pictures/dbc.png');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            overflow-x:hidden;
            width:100%;
            height:925px;

        }
        .auto-style59 {
            width: 99%;
        }
        .auto-style60 {
            background-image: url('Pictures/dbc.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            width: 100%;
            height: 881px;
            margin-right: 0px;
        }
        .auto-style69 {
            width: 949px;
            height: 282px;
        }
        .auto-style77 {
            width: 148px;
        }
        .auto-style78 {
            width: 183px;
        }
        .auto-style80 {
            width: 159px;
        }
        .auto-style81 {
            width: 190px;
        }
        .auto-style83 {
            width: 186px;
        }
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style60">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <table class="auto-style59">
        <tr>
            <td>
                <h2 class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      REGISTRATION FORM </h2>
            </td>
        </tr>
    </table>

    <table class="auto-style59" style="width:100%">
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style42">
                <asp:Button runat="server" ID="btnRegisterNew" Text="New" OnClick="btnRegisterNew_OnClick" Width="89px" Visible="false"/>
                <asp:Panel ID="pnlStudentFields" runat="server" Height="241px" Width="480px">

                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblIdAddEdit" visible="false"/>
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

                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>

    <table>
        <tr>
            <td class="auto-style69">
                <asp:Panel runat="server" ID="pnlStudent" BorderStyle="Solid"   Height="506px" Width="140%" >
                                <table class="auto-style51" style="text-align: center; margin-left: 2px; margin-top: 20px; margin-bottom: 20px;">
                                    <tr>
                                        <th class="auto-style52">ID</th>
                                        <th class="auto-style77">Student Number</th>
                                        <th class="auto-style81">Last Name</th>
                                        <th class="auto-style81">First Name</th>
                                        <th class="auto-style81">Middle Name</th>
                                        <th class="auto-style78">Program</th>
                                        <th class="auto-style80">Year</th>
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
   </div>
</asp:Content>
