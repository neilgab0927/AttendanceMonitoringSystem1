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
            width:100%;

            
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
            height: 232px;
        }
        .auto-style50 {
            width: 309px;
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
        .auto-style58 {
            width: 170px;
        }
        .auto-style60 {
            background-image: url('Pictures/DBCRotonda.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            width: 106%;
            height: 648px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style61 {
            width: 182px;
        }
        .auto-style62 {
            width: 244px;
        }
        .auto-style63 {
            width: 330px;
            height: 286px;
        }
        .auto-style64 {
            height: 286px;
        }
        .auto-style65 {
            width: 155px;
        }
        </style>
</head>

<body style="width:94%; height: 562px; margin-left: 0px;">
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
               
                <td class="auto-style50">
                    <table>
                                           <tr>
                                               <td class="auto-style58"></td>
                                               <td>
                                                   <asp:Image runat="server" src="Pictures/Log.png"  alt="DBClogo" CssClass="auto-style47"/>
                                               </td>
                                               <td class="auto-style57"></td>
                                           </tr>

                                           <tr>
                                               <td class="auto-style58"></td>
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
                                                <td class="auto-style65"></td>
                                                <td><asp:Label ID="LblComment" runat="server" BorderStyle="None" /></td>
                                                <td class="auto-style54"></td>
                                            </tr>

                                            <tr>
                                                <td class="auto-style65"></td>
                                                <td><asp:Button ID="BtnLogIn" runat="server" Text="Log In" Width="111px"
                                                  OnClick="Button1_Click" /></td>
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
