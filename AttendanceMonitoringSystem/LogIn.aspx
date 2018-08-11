 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="AttendanceMonitoringSystem.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .background{
            background-image:url('Pictures/DBCRotonda.png');
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
            margin:0 auto;
            width:1300px;

            
        }
        
        .div{
            width:100%;
            height:765px;
        }
        .auto-style34 {
            width: 11px;
        }
        .auto-style47 {
            width: 98px;
            height: 84px;
            margin-left: 0px;
        }
        .auto-style48 {
            width: 100%;
            height: 279px;
        }
        .auto-style54 {
            width: 112px;
        }
        .auto-style56 {
            width: 99%;
            height: 356px;
        }
        .auto-style57 {
            width: 148px;
        }
        .auto-style60 {
            background-image: url('Pictures/DBCRotonda.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            /*width: 106%;*/
            height: 638px;
            margin-right: 0px;
            margin-bottom: 0px;
            /*background: rgba(255,255,255,.99);*/
            /*box-shadow: 0 1px 5px 0 rgba(0, 0, 0, 0.2), 0 4px 10px 0 rgba(0, 0, 0, 0.5);*/
            /*padding: -5px;*/
            width: 1300px;
        }
        .auto-style61 {
            width: 182px;
        }
        .auto-style62 {
            width: 287px;
        }
        .auto-style63 {
            width: 330px;
            height: 286px;
        }
        .auto-style64 {
            height: 286px;
        }
        .auto-style66 {
            width: 335px;
        }
        .auto-style68 {
            width: 81px;
        }
        .auto-style72 {
            width: 165px;
        }
        .auto-style73 {
            width: 160px;
        }
        </style>
</head>

<body style="width:100%; height: 628px; margin-left: 0px;" class="background">
    <form id="form1" runat="server" class="auto-style60">
         <div runat="server">
        <table class="auto-style56">
            <tr>
                <td class="auto-style63"></td>
                <td class="auto-style64"></td>
                <td class="auto-style64"></td>
            </tr>
        </table>

        <table class="auto-style48">
            <tr>
                <td class="auto-style62"></td>
               
                <td class="auto-style66">
                    <table>
                                           <tr>
                                               <td class="auto-style73"></td>
                                               <td>
                                                   <asp:Image runat="server" src="Pictures/Log.png"  alt="DBClogo" CssClass="auto-style47"/>
                                               </td>
                                               <td class="auto-style57"></td>
                                           </tr>

                                           <tr>
                                               <td class="auto-style73"></td>
                                               <td></td>
                                               <td class="auto-style57"></td>
                                           </tr>
                                       </table>

                                       <table>
                                           <tr>
                                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:Label ID="LblUser" runat="server" Text="Username"></asp:Label> </td>

                                          <td class="auto-style20">
                                              <asp:TextBox ID="TxtUser" runat="server" Width="226px"></asp:TextBox></td>
                                          </tr>

                                          <tr>
                                              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                  <asp:Label ID="LblPass" runat="server" Text="Password"></asp:Label></td>

                                              <td class="auto-style34">
                                                  <asp:TextBox ID="TxtPass" runat="server" Width="226px" TextMode="Password"></asp:TextBox></td>
                                          </tr>
                                       </table>

                                        <table>
                                            <tr>
                                                <td class="auto-style72"></td>
                                                <td class="auto-style68"><asp:Label ID="LblComment" runat="server" BorderStyle="None" /></td>
                                                <td class="auto-style54"></td>
                                            </tr>

                                            <tr>
                                                <td class="auto-style72"></td>
                                                <td class="auto-style68"><asp:Button ID="BtnLogIn" runat="server" Text="Log In" Width="99px"
                                                  OnClick="Button1_Click" Height="25px" /></td>
                                                <td class="auto-style54"></td>
                                            </tr>
                                        </table>
                </td>
                <td class="auto-style61"></td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
