<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AttendanceMonitoringSystem.Registration" %>

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

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <body style="text-align: center"></body>

    








    <table class="auto-style23" style="background-image: url('Pictures/BW.PNG');">
        <tr>
            <td class="auto-style17" colspan="3">
                <table>
                    <tr>
                        <td>
                            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRATION FORM</h3>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style30">
                <table>
                    <tr>
                        <td class="auto-style37">
                            <table class="auto-style29">
                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label runat="server" Text="Student Name"></asp:Label>
                                    </td>
                                    <td>
                                        <table class="auto-style26">
                                            <tr>
                                                <td class="style26">
                                                    <asp:TextBox ID="TxtName" runat="server" Width="226px" OnTextChanged="TxtLname_TextChanged"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label ID="LblStudentNo" runat="server" Text="Student Number"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        <asp:TextBox ID="TxtStudentNo" runat="server" Width="226px"></asp:TextBox>
                                    </td>
                                    <td class="style13"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style36">Program</td>
                                    <td class="style17">
                                        <asp:TextBox ID="TxtProgram" runat="server" Width="226px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label ID="LblYear" runat="server" Text="Year"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        <asp:TextBox ID="TxtYear" runat="server" Width="226px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <br />
                                    </td>

                                    <td class="style13">
                                        <br />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label ID="lblPosition" runat="server" Text="Position"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        <asp:DropDownList ID="ddlPosition" runat="server" Height="16px" Width="237px"></asp:DropDownList>
                                    </td>
                                    <td class="style13">
                                        <br />
                                    </td>

                                    <td class="style13">
                                        <br />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style36">
                                        <asp:Label ID="LblNote" runat="server" BorderStyle="None" />
                                        &nbsp;</td>
                                    <td class="style17">

                                        <table class="auto-style20">
                                            <tr>
                                                <td class="auto-style22"></td>
                                                <td class="auto-style21">
                                                    <asp:Button ID="btnReg" runat="server" OnClick="Button1_Click" Text="Register" Width="105px" Height="26px"
                                                        Style="margin-left: 45px" />
                                                </td>
                                                <td class="auto-style19"></td>
                                            </tr>
                                        </table>

                                    </td>
                                    <td class="style13">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35"></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style31">
                <br />
            </td>

        </tr>
    </table>

</asp:Content>
