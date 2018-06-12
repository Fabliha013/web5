<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 243px;
            background-color: #FFFFCC;
        }
        .auto-style9 {
            height: 59px;
            width: 140px;
        }
        .auto-style10 {
            width: 165px;
            height: 59px;
        }
        .auto-style11 {
            height: 58px;
            width: 140px;
        }
        .auto-style12 {
            width: 165px;
            height: 58px;
        }
        .auto-style13 {
            height: 67px;
            width: 140px;
        }
        .auto-style14 {
            width: 165px;
            height: 67px;
        }
        .auto-style15 {
            height: 62px;
            width: 140px;
        }
        .auto-style16 {
            width: 165px;
            height: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; font-weight: 700; height: 407px; width: 920px">
    
    &nbsp; Hello&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="color: #990000"></asp:Label>
        <br />
        <br />
&nbsp;here,you can change your password..<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">old password</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" TextMode="Password" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">new password</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" TextMode="Password" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">confirm password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="Password" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700; color: #FFFFFF; background-color: #3333FF" Text="change" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" style="color: #990000"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <br />
&nbsp;</div>
    </form>
</body>
</html>
