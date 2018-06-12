<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userform.aspx.cs" Inherits="userform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="StyleSheet" type="text/css" href="StyleSheet3.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/overwrite.css"/>
	<link href="css/animate.min.css" rel="stylesheet"/> 
    <style type="text/css">
        .auto-style1 {
            height: 176px;
        }
        .auto-style2 {
            width: 290px;
        }
        .newStyle1 {
            border-color: #000080;
            border-style: ridge;
        }
        .auto-style3 {
            width: 537px;
        }
        .auto-style4 {
            width: 736px;
        }
    </style>
</head>
<body>
    <div class="new">
    </div>
    <form id="form1" runat="server">
        <header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Hardware Acceleration Club</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="http://localhost:10872/Default3.aspx">Home</a></li>
                        <li><a href="http://localhost:10872/member.aspx">members</a></li>
                        <li><a  href="http://localhost:10872/post.aspx">Post</a></li>
                        <li><a  href="http://localhost:10872/File.aspx">Files</a></li> 
                        <li><a href="http://localhost:10872/gallarey.aspx">gallery</a></li>
               
                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->
        <table style="width: 100%; height: 537px;">
        <tr>
            <td class="auto-style2">
                 <div>
    
        <asp:Label ID="Label2" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-weight: 700; color: #0000CC; background-color: #FFFFFF">Logout</asp:LinkButton>
                     <br />
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/changepassword.aspx" style="font-weight: 700; color: #0000CC">change password</asp:HyperLink>
    
    </div>
               

                 
                
</td>
            
            <td class="auto-style4">
                <asp:Image ID="Image1" runat="server" Height="301px" CssClass="newStyle1" style="font-size: x-large" Width="304px" />
               
                
    
                &nbsp;</td>
            <td class="auto-style3">
                

                <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" style="color: #FFFFFF; font-weight: 700; background-color: #000066" Text="upload file" Width="112px" />
            </td>
        </tr>
    </table>
    
       
        
        
       
        
    </form>
</body>
</html>
