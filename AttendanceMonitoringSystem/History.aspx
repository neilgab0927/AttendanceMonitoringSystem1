﻿ <%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="AttendanceMonitoringSystem.History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style14 {
            width: 100%;
            height: 104px;
        }
        .auto-style37 {
            height: 2px;
        }
        .auto-style38 {
            width: 1188px;
        }

        .back{

            background-image:url('Pictures/dbc.png');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            width:100%;
            height:925px;

        }
        .auto-style41 {
            width: 1006px;
            height: 93px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="back">
           <table class="back">
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlHistory" BorderStyle="solid" BorderWidth="3px" >

        <table>
               <tr>
            <td class="auto-style37">
             <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HISTORY</h2>
            </td>
        </tr>
        </table>

        <table class="auto-style41" style="text-align: center; margin: 20px">
            <tr>
                <th>Event</th>
                <th>Date and Time</th>
                
            </tr>
            <asp:Repeater runat="server" ID="rptrHistory" >
                <ItemTemplate>
                    <tr>

                        <td>
                            <asp:Label ID="lblHistoryDescription" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblHistoryDate" runat="server" Text='<%#Bind("Date", "{0:MMMM dd, yyy hh:mm:ss tt}") %>'></asp:Label>
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

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>--%>

