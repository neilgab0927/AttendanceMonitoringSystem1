<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="ClassRecord.aspx.cs" Inherits="AttendanceMonitoringSystem.ClassRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 98px;
        }
        .auto-style9 {
            width: 183px;
        }
        .auto-style10 {
            width: 100%;
            height: 41px;
        }
        .auto-style11 {
            width: 930px;
            height: 41px;
        }
        .auto-style12 {
            width: 100%;
            height: 244px;
        }
        .auto-style13 {
            height: 46px;
        }
        .auto-style14 {
            width: 100%;
            height: 104px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td class="auto-style13">     
                <table class="auto-style11">
                     <tr>
                         <td>
                             <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLASS RECORD</h3>
                             </td>
                         </tr>
                 </table>
            </td>
        </tr>
        
        <tr>
            <td>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"> 
                            <asp:GridView ID="gvClassRecord" runat="server" CssClass="gv" Width="700px">
                        </asp:GridView>
                        </td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>    
</asp:Content>

