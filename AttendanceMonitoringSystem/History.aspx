<%@ Page Title="" Language="C#" MasterPageFile="~/DBC.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="AttendanceMonitoringSystem.History" %>

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
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HISTORY</h3>
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
                            <asp:GridView ID="gvHistory" runat="server" CssClass="gv" Width="700px">
                            </asp:GridView>
                        </td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


    <asp:Panel runat="server" ID="pnlHistory" BorderStyle="solid" BorderWidth="3px" >
        <table class="sortable jTPS" style="text-align: center; margin: 20px">
            <tr>
                <th>History</th>
                <th>Date</th>
                
            </tr>
            <asp:Repeater runat="server" ID="rptrHistory" >
                <ItemTemplate>
                    <tr>

                        <td>
                            <asp:Label ID="lblHistoryDescription" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblHistoryDate" runat="server" Text='<%#Bind("Date", "{0:MMMM dd, yyyy}") %>'></asp:Label>
                        </td>
                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </asp:Panel>


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

