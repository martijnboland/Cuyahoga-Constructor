﻿<%@ Control Language="c#" AutoEventWireup="false" Inherits="Cuyahoga.Web.UI.BaseTemplate" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title><asp:Literal ID="PageTitle" runat="server"></asp:Literal></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <asp:Literal ID="MetaTags" runat="server" />
    <asp:Literal ID="Stylesheets" runat="server" />
    <asp:Literal ID="JavaScripts" runat="server" />
</head>
<body>
<form id="t" method="post" runat="server">
    <div id="menu">
        <asp:PlaceHolder ID="Navigation_Main" runat="server"></asp:PlaceHolder>
    </div>
    <div id="logo">
        <h1><a href="#">Cuyahoga</a></h1><h2>Just a test template</h2>
    </div>
    <div id="splash">
        <asp:Image ID="Image1" ImageUrl="~/Templates/Corporate/Images/img05.jpg" AlternateText="Main website promotional image" runat="server" />
    </div>
    <hr />
    <div id="page">
        <div id="content">
            <asp:PlaceHolder ID="Content_Main" runat="server"></asp:PlaceHolder>
        </div>
        <div id="sidebar">
            <ul>
                <li><asp:PlaceHolder ID="Navigation_Sub" runat="server"></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="Login_Main" runat="server"></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="Content_Side_Right" runat="server"></asp:PlaceHolder></li>
            </ul>
        </div>
    </div>
    <div id="footer">
        <p>Copyright &copy; 2010 <a href="#">Company Name</a></p>
    </div>
</form>
</body>
</html>