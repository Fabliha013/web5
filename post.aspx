<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 149px;
        }
        .auto-style2 {
            height: 28px;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            background-color: #6699FF;
        }
    </style>
    </head>
<body>
     <form id="form1" runat="server">
         <table style="width: 100%; height: 537px;">
        <tr style="text-align: left; color: #FFFFFF; background-color: #0099FF">
            <td class="auto-style1" colspan="3">
                <h2 style="background-color: #000066">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HACK</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="auto-style20">
            <tr>
                <td class="auto-style9">name</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">email</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">post</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="127px" TextMode="MultiLine" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <br />
                </td>
                <td class="auto-style16" draggable="true">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700; color: #FFFFFF; background-color: #3333FF" Text="post" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" style="color: #990000"></asp:Label>
                    <br />
                </td>
            </tr>
        </table> 
               

                 
                
</td>
            <td class="auto-style3">

                 <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="833px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
                     <AlternatingItemStyle BackColor="#F7F7F7" />
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <ItemTemplate>
                 <br />
                 <br />
                 <table class="auto-style21">
                     <tr>
                         <td class="auto-style22">posted by
                             <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text='<%# Eval("name") %>'></asp:Label>
                             &nbsp;on
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("dateofcomment") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="font-weight: 700">Post:&nbsp;&nbsp;
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
             <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
         </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [post]"></asp:SqlDataSource>
                

                &nbsp;</td>
        </tr>
    </table>
        
         
        
     </form>
</body>
    
</html>
