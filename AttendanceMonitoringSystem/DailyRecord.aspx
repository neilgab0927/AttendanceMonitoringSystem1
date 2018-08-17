<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="DailyRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.DailyRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .back{

            background-image:url('Pictures/dbc.png');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            width:100%;
            height:925px;

        }
        
        .auto-style38 {
            width: 1219px;
            height: 254px;
        }
        .auto-style39 {
            width: 852px;
        }
        .auto-style40 {
            width: 68px;
        }
        .auto-style41 {
            width: 159px;
        }
        .auto-style42 {
            width: 295px;
        }
        .auto-style43 {
            width: 132px;
        }
        .auto-style44 {
            width: 160px;
        }
        
 
     
        
 
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="back">
        <table style="width: 100%;">
        <tr>
            <td>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style11">
                            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DAILY RECORD</h2>
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
                        <th _designer:mapid="338" class="auto-style40">ID</th>
                        <th _designer:mapid="339" class="auto-style41">Student ID</th>
                        <th _designer:mapid="33b" class="auto-style42">Name</th>
                        <th _designer:mapid="33d" class="auto-style44">Program</th>
                        <th _designer:mapid="33e" class="auto-style43">Year</th>
                        <th _designer:mapid="33e">Date</th>
                    </tr>
                    <asp:Repeater runat="server" ID="rptrDailyRecord" OnItemDataBound="rptrDailyRecord_OnItemDataBound">
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
                                <td id="tdDate" runat="server">
                                    <asp:Label ID="lblDailyRecordProgram" runat="server" Text='<%#Bind("Date","{0:MMMM dd, yyyy hh:mm:ss tt}") %>'></asp:Label>
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
