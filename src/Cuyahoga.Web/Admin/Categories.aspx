<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Categories.aspx.cs" Inherits="Cuyahoga.Web.Admin.Categories" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Categories</title>
</head>
<body>
	<form id="form1" runat="server">

		<script type="text/javascript">
            <!--
            function SetUniqueRadioButton(nameregex, current)
            {
               re = new RegExp(nameregex);
               for(i = 0; i < document.forms[0].elements.length; i++)
               {
                  elm = document.forms[0].elements[i]
                  if (elm.type == 'radio')
                  {
                     if (re.test(elm.name))
                     {
                        elm.checked = false;
                     }
                  }
               }
               current.checked = true;
            }
            //-->
		</script>

		<p>
		    <em>NOTE: For each category tree, you have to <asp:HyperLink ID="btnNewRoot" runat="server" NavigateUrl="~/Admin/CategoryEdit.aspx?cid=0&pcid=-1" Text="create a root category" /></em>
		</p>
		<div class="group">
			<h4><asp:Literal ID="litNoRoot" Text="Select Root Category: " runat="server" /></h4>
			<asp:RadioButtonList ID="rdioListRoot" runat="server" AutoPostBack="True" CssClass="nodeslist" OnSelectedIndexChanged="RdioListRootSelectedIndexChanged" RepeatDirection="Vertical" RepeatLayout="Flow" />
		</div>
		<div class="group">
		    <h4>Categories</h4>
			<asp:Repeater ID="rptCategories" runat="server" OnItemDataBound="RptCategoriesItemDataBound">
				<HeaderTemplate>
					<table id="categories" class="tbl">
						<tr>
							<th id="select">Select</th>
							<th id="name">Name</th>
							<th id="path">Path</th>
							<th id="action">Action</th>
						</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td>
							<asp:RadioButton ID="rdioBtnCategory" GroupName="Categories" runat="server" Checked="false" />
						</td>
						<td>
							<asp:Label ID="lblCategory" runat="server" />
							<asp:HyperLink ID="hplEdit" runat="server"><%# Eval("Name") %></asp:HyperLink>
						</td>
  					    <td>
							<%# Eval("Path") %>
						</td>
						<td>
							<asp:HyperLink ID="hplAddChild" runat="server">Add child</asp:HyperLink>
						</td>
					</tr>
				</ItemTemplate>
				<FooterTemplate>
					</table>
				</FooterTemplate>
			</asp:Repeater>
			<hr />
			<div>
				<asp:Button ID="btnMove" runat="server" Text="Move" OnClick="BtnMoveClick" /><asp:DropDownList ID="ddlMoveCategories" runat="server"></asp:DropDownList>&nbsp;to selected category
			</div>
		</div>
	</form>
</body>
</html>
