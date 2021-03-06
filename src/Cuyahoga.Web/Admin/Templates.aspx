﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Templates.aspx.cs" Inherits="Cuyahoga.Web.Admin.Templates" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Templates</title>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
		    <p>Manage the templates that are available for each website to use.</p>
		    <div class="group">
                <p><asp:Label ID="lblddlSites" AssociatedControlID="ddlSites" runat="server" Text="Show Templates for Site: "></asp:Label>
                <asp:DropDownList ID="ddlSites" AutoPostBack="true" 
                AppendDataBoundItems="true" runat="server" 
                onselectedindexchanged="DdlSitesSelectedIndexChanged">
                    <asp:ListItem Value="0">All</asp:ListItem>
                    <asp:ListItem Value="-1">Shared Library</asp:ListItem>
                </asp:DropDownList></p>
			    <table id="templates" class="tbl"><asp:repeater id="rptTemplates" OnItemDataBound="RptTemplatesItemDataBound" runat="server">
					    <headertemplate>
						    <tr>
							    <th>Template name</th>
							    <th>Site</th>
							    <th>Base path</th>
							    <th>Template control</th>
							    <th>Css</th>
							    <th></th>
						    </tr>
					    </headertemplate>
					    <itemtemplate>
						    <tr>
							    <td><%# DataBinder.Eval(Container.DataItem, "Name") %></td>
							    <td><%# DataBinder.Eval(Container.DataItem, "Site.Name") %></td>
							    <td><%# DataBinder.Eval(Container.DataItem, "BasePath") %></td>
							    <td><%# DataBinder.Eval(Container.DataItem, "TemplateControl") %></td>
							    <td><%# DataBinder.Eval(Container.DataItem, "Css") %></td>
							    <td>
								    <asp:hyperlink id="hplEdit" runat="server">Edit</asp:hyperlink>
							    </td>
						    </tr>
					    </itemtemplate>
				    </asp:repeater>
			    </table>
    		</div>
			<asp:button id="btnNew" runat="server" OnClick="BtnNewClick" text="Add new template"></asp:button>
        </form>
	</body>
</html>
