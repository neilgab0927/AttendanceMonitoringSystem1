﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smstrial.aspx.cs" Inherits="AttendanceMonitoringSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <html xmlns="http://www.w3.org/1999/xhtml">     

</html> 
    <form id="smsdata" runat="server">
    <asp:Table id="smstable" runat="server" style="text-align:left; border-width:thin;
      border-color:Silver;" BorderStyle="Solid">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                 <b>Compose a message:</b>
                 <br />
                 <br />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Left" VerticalAlign="Top">
                 <asp:Label ID="labelRecipient" runat="server" Text="Recipient: ">
                 </asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="textboxRecipient" runat="server">
                 </asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Left" VerticalAlign="Top">
                 <asp:Label ID="labelMessage" runat="server" Text="Message Text: ">
                 </asp:Label>
        </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="textboxMessage" runat="server" TextMode="MultiLine">
                 </asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="buttonSend" runat="server" Text="Send Message"

                  OnClick="buttonSendOnClick" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:TextBox ID="textboxError" runat="server" BorderStyle="None"

                  TextMode="MultiLine"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</form>
</body>
</html>
