<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="DailyRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.DailyRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 180px;
        }

        .auto-style10 {
            height: 26px;
        }

        .auto-style11 {
            height: 37px;
        }

        .auto-style12 {
            width: 100%;
            height: 196px;
        }

        .auto-style13 {
            height: 23px;
            width: 100%;
        }

        .auto-style18 {
            width: 653px;
        }

        .auto-style19 {
            height: 0px;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; background-image: url(Pictures/Background.png)">
        <tr>
            <td>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style11">
                            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DAILY RECORD</h3>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>
    <table class="auto-style12">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style9">

                <table class="auto-style38" style="text-align: center; margin-right: 20px; margin-top: 20px; margin-bottom: 20px;" __designer:mapid="336">
                    <tr __designer:mapid="337">
                        <th __designer:mapid="338">ID</th>
                        <th __designer:mapid="339">Student ID</th>
                        <th __designer:mapid="33b">Name</th>
                        <th __designer:mapid="33d">Program</th>
                        <th __designer:mapid="33e">Year</th>
                        <th __designer:mapid="33e">Date</th>
                    </tr>
                    <asp:Repeater runat="server" ID="rptrDailyRecord">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="lblDailyRecordId" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDailyRecordStudentId" runat="server" Text='<%#Bind("StudentId") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDailyRecordLastName" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDailyRecordFirstName" runat="server" Text='<%#Bind("Program") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDailyRecordMiddleName" runat="server" Text='<%#Bind("Year") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblDailyRecordProgram" runat="server" Text='<%#Bind("Date","{0:MMMM dd, yyy hh:mm:ss tt}") %>'></asp:Label>
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


                <%--<asp:GridView ID="gvDailyRecord" runat="server" CssClass="gv" Width="655px">
                        </asp:GridView>--%>
            </td>
            <td></td>
        </tr>
    </table>
</asp:Content>
