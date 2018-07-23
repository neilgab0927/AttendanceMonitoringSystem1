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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; background-image:url(Pictures/Background.png)">
        <tr>
            <td>     
                <table class="auto-style13">
                     <tr>
                         <td class="auto-style11">
                             <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DAILY RECORD</h3>
                             </td>
                         </tr>
                 </table>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>    
                <table class="auto-style12">
                    <tr>
                        <td></td>
                        <td class="auto-style9"> 
                            <asp:GridView ID="gvDailyRecord" runat="server" CssClass="gv" Width="655px">
                        </asp:GridView>
                        </td>
                        <td></td>
                    </tr>
                </table>
            </asp:Content>
