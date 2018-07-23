 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="AttendanceMonitoringSystem.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style8 {
            width: 110%;
            height: 767px;
        }
        .auto-style9 {
            width: 1071px;
            height: 14px;
        }
        .auto-style12 {
            height: 602px;
        }
        .auto-style14 {
            width: 657px;
            height: 14px;
        }
        .auto-style15 {
            width: 102px;
            height: 92px;
        }
        .auto-style16 {
            width: 276px;
            height: 92px;
        }
        .auto-style18 {
            width: 258px;
        }
        .auto-style19 {
            width: 258px;
            height: 92px;
        }
        .auto-style20 {
            width: 391px;
            height: 23px;
        }
        .auto-style21 {
            width: 130px;
            height: 23px;
        }
        .auto-style22 {
            width: 413px;
        }
        .auto-style23 {
            width: 680px;
        }
        .auto-style24 {
            width: 584px;
        }
        .auto-style29 {
            width: 657px;
            height: 308px;
        }
        .auto-style30 {
            width: 1071px;
            height: 308px;
        }
        .auto-style31 {
            width: 1080px;
            height: 308px;
        }
        .auto-style33 {
            width: 1080px;
            height: 14px;
        }
        .auto-style34 {
            width: 391px;
            height: 27px;
        }
        .auto-style35 {
            width: 1080px;
            height: 427px;
        }
        .auto-style36 {
            width: 657px;
            height: 427px;
        }
        .auto-style37 {
            width: 1071px;
            height: 427px;
        }
        .auto-style38 {
            width: 584px;
            height: 31px;
        }
        .auto-style39 {
            width: 680px;
            height: 31px;
        }
        .auto-style40 {
            width: 413px;
            height: 31px;
        }
        .auto-style41 {
            height: 27px;
        }
        .auto-style42 {
            width: 258px;
            height: 45px;
        }
        .auto-style43 {
            height: 45px;
        }
        .auto-style44 {
            width: 102px;
        }
        .auto-style45 {
            height: 45px;
            width: 102px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style8" style="background-image:url(Pictures/DBCRotonda.png)">
          <table class="auto-style12" style="width:100%">
              <tr>
                  <td class="auto-style31"></td>
                  <td class="auto-style29"></td>
                  <td class="auto-style30">-</td>
              </tr>

               <tr>
                  <td class="auto-style35"></td>
                  <td class="auto-style36">
                      <table>
                          <tr>
                              <td class="auto-style18"></td>
                              <td class="auto-style44"></td>
                              <td></td>
                          </tr>

                          <tr>
                              <td class="auto-style19"></td>
                              <td class="auto-style15">
                                  <img src="Pictures/Log.png" alt="DBClogo" style="width: 98px; height: 84px;" />
                              </td>
                              <td class="auto-style16"></td>
                          </tr>

                           <tr>
                              <td class="auto-style42"></td>
                              <td class="auto-style45"></td>
                              <td class="auto-style43"></td>
                          </tr>
                      </table>

                      <table>
                          <tr>
                          <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="LblUser" runat="server" Text="Username"></asp:Label> </td>
                          <td class="auto-style20">
                              <asp:TextBox ID="TxtUser" runat="server" Width="226px"></asp:TextBox></td>
                          </tr>

                          <tr>
                              <td class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="LblPass" runat="server" Text="Password"></asp:Label></td>
                              <td class="auto-style34"><asp:TextBox ID="TxtPass" runat="server" Width="226px" TextMode="Password"></asp:TextBox></td>
                          </tr>
                      </table>

                      <table>
                          
                          <tr>
                              <td class="auto-style38"></td>
                              <td class="auto-style39"> <asp:Label ID="LblComment" runat="server" BorderStyle="None" /></td>
                              <td class="auto-style40"></td>
                          </tr>

                          <tr>
                              <td class="auto-style24"></td>
                              <td class="auto-style23"><asp:Button ID="BtnLogIn" runat="server" Text="Log In" Width="105px" Height="26px"
                                    style="margin-left: 45px" OnClick="Button1_Click" /></td>
                              <td class="auto-style22"></td>
                          </tr>
                      </table>
                  </td>
                  <td class="auto-style37"></td>
              </tr>

               <tr>
                  <td class="auto-style33"></td>
                  <td class="auto-style14"></td>
                  <td class="auto-style9"></td>
              </tr>
          </table>
        </div>
    </form>
</body>
</html>
