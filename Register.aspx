<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        
        .formclass 
        {
            padding:20px;
            margin:0px auto;
            background:#f00;
            width:200px;
        }
        h2
        {
            text-align:center;
        }
        .input
        {
            padding:4px;
            width:100%;
        }
        .facebook {
           position:fixed;
           margin-left:30px;
            width: 41px;
            height: 35px;
            text-align:right;
            top: 157px;
            left: 22px;
        }
        .twitter {
             position:fixed;
           margin-left:53px;
            width: 34px;
            height: 34px;
            text-align:right;
            top: 195px;
            left: 5px;
        }
        .google {
            position:fixed;
            margin-left:300px;
            width: 35px;
            height: 33px;
            text-align:right;
            top: 126px;
            left: -245px;
        }
        input[type=search] {
            border-style: none;
            border-color: inherit;
            border-width: medium;
width: 48%;
            padding: 10px;
            border-radius:0.2cm 0 0 0.2cm;
            height: 37px;
        }
        button.search-button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
width: 197px;
            background-color: #44a41d;
            border-radius:0 0.2cm 0.2cm 0;
            cursor:pointer;
            height: 45px;
            margin-left: 0px;
            margin-right: 0px;
        }
            button.search-button:hover {
                background-color: #dd1717;
            }
        

        .fwimage1 {
            height: 273px;
            width: 782px;
        }
        .searchbox {
            height: 168px;
            width: 666px;
            margin-right: 2px;
        }
        

        .auto-style1 {
            height: 90px;
        }
        .auto-style3 {
            width: 231px;
            text-align: left;
            
        }
        .auto-style4 {
            width: 504px;
            color: #000000;
            text-align: left;
            font-style: italic;
            font-weight: 700;
            background-color: #6699FF;
        }
        .newStyle1 {
            background-color: #FFFFFF;
            border: medium ridge #000080;
        }
        .newStyle2 {
            border: medium ridge #000080;
        }
        .newStyle3 {
            border: medium ridge #000080;
        }
        .newStyle4 {
            border-style: ridge;
            border-color: #000080;
        }
        .auto-style5 {
            height: 2px;
        }
        

  </style>      
        
    
    
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 750px;">
            <tr>
                <td class="auto-style1" colspan="3">
                    <header class="jhn">
		<nav>
			<h1>Hardware Acceleration Club of KUET</h1>
			<ul id="nav">
				<li><a class="homered" href="http://localhost:10872/">HOME</a></li>
				<li><a class="homeblack" href="http://localhost:10872/about.aspx">ABOUT</a>
					<ul>
						<li><a href="http://localhost:10872/info.aspx">info</a></li>
						<li><a>members</a></li>
						<li><a href="http://localhost:10872/picture.aspx">innovation </a></li>
						<li><a href="http://localhost:10872/resources.aspx">resources</a></li>
					</ul>
				</li>
				<li><a class="homeblack" href="#">ONLINEORDER</a></li>
				<li><a class="homeblack" href="http://localhost:10872/loginpage.aspx">Login</a></li>
                <li><a class="homeblack" href="http://localhost:10872/feedback.aspx">FeedBack</a></li>
                <li><a class="homeblack" href="http://localhost:10872/File.aspx">Files</a></li>
               
                
                 
			</ul>
              
          </nav>
         
    </header>
                </td>
                
            </tr>
            <tr class="divider">
                <td class="auto-style5" colspan="3"></td>
            </tr>
            <tr>
                <td class="auto-style3"> <asp:ImageButton CssClass="facebook" ID="ImageButton4" runat="server" ImageUrl="~/img/facebook.png" />
        
         <asp:ImageButton CssClass="google" ID="ImageButton5" runat="server" ImageUrl="~/img/Google-plus-icon.png" />
             
         <asp:ImageButton CssClass="twitter" ID="ImageButton6" runat="server" ImageUrl="~/img/1fa60fad-471508.png" />&nbsp;</td>
                <td class="auto-style4">
                    <h1 style="font-size: x-large">Register Page&nbsp;</h1>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Name" style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="nametxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" Width="206px" CssClass="newStyle1"></asp:TextBox>
        </p>
        <p style="font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Email-Id&nbsp;&nbsp;
            <asp:TextBox ID="emailtxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" Width="206px" CssClass="newStyle2"></asp:TextBox>
        </p>
        <p style="font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Password
            <asp:TextBox ID="passtxt" runat="server" Height="25px" style="margin-left: 31px; margin-bottom: 0px" TextMode="Password" Width="206px" CssClass="newStyle3"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="profile_pic" style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="newStyle4" />
&nbsp;&nbsp;</p>
        <p>
&nbsp;<asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="Register" Width="116px" style="font-weight: 700; background-color: #99CCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="#006600" Text="insertion complete" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </form>
</body>
</html>
