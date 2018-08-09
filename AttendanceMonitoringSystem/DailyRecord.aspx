<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="DailyRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.DailyRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .back{

            background-image:url('Pictures/aaa.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            width:100%;

        }
        
 
        .auto-style37 {
            background-image: url('Pictures/aaa.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            width: 100%;
            height: 416px;
        }
        
 
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="auto-style37">
        <table style="width: 100%; /*background-image: url(Pictures/Background.png)*/">
        <tr>
            <td>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style11">
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DAILY RECORD</h4>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>
    <table class="auto-style12">

        <tr>
            <td class="auto-style39">
                &nbsp;&nbsp;&nbsp;<table class="auto-style38" style="text-align: center; margin-right: 20px; margin-top: 0px; margin-bottom: 0px; margin-left:20px;"designer:mapid="336">
                    <tr designer:mapid="337">
                        <th _designer:mapid="338">ID</th>
                        <th _designer:mapid="339">Student ID</th>
                        <th _designer:mapid="33b">Name</th>
                        <th _designer:mapid="33d">Program</th>
                        <th _designer:mapid="33e">Year</th>
                        <th _designer:mapid="33e">Date</th>
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
<%--                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">
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
            </td>
           
        </tr>
    </table>

   </div>
</asp:Content>
