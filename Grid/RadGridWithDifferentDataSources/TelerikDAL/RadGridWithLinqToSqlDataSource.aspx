﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadGridWithLinqToSqlDataSource.aspx.cs"
Inherits="RadGridWithLinqToSqlDataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title></title>
	</head>
	<body>
		<form id="form1" runat="server">
			<telerik:RadScriptManager ID="RadScriptManager1" runat="server">
				<Scripts>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
					</asp:ScriptReference>
				</Scripts>
			</telerik:RadScriptManager>
			<telerik:RadGrid ID="RadGrid1" runat="server" CellSpacing="0" DataSourceID="LinqDataSource1"
							 AllowSorting="True" AllowFilteringByColumn="True" AllowAutomaticDeletes="True"
							 AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowPaging="True"
							 AutoGenerateDeleteColumn="True" AutoGenerateEditColumn="True" GridLines="None">
				<MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="LinqDataSource1"
								 CommandItemDisplay="Top">
					<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>
					<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
						<HeaderStyle Width="20px"></HeaderStyle>
					</RowIndicatorColumn>
					<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
						<HeaderStyle Width="20px"></HeaderStyle>
					</ExpandCollapseColumn>
					<Columns>
						<telerik:GridBoundColumn DataField="OrderID" DataType="System.Int32" FilterControlAltText="Filter OrderID column"
												 HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" UniqueName="OrderID">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="CustomerID" FilterControlAltText="Filter CustomerID column"
												 HeaderText="CustomerID" SortExpression="CustomerID" UniqueName="CustomerID">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="EmployeeID" FilterControlAltText="Filter EmployeeID column"
												 HeaderText="EmployeeID" SortExpression="EmployeeID" UniqueName="EmployeeID" DataType="System.Int32">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="OrderDate" FilterControlAltText="Filter OrderDate column"
												 HeaderText="OrderDate" SortExpression="OrderDate" UniqueName="OrderDate" DataType="System.DateTime">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="RequiredDate" FilterControlAltText="Filter RequiredDate column"
												 HeaderText="RequiredDate" SortExpression="RequiredDate" UniqueName="RequiredDate"
												 DataType="System.DateTime">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShippedDate" DataType="System.DateTime" FilterControlAltText="Filter ShippedDate column"
												 HeaderText="ShippedDate" SortExpression="ShippedDate" UniqueName="ShippedDate">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipVia" DataType="System.Int32" FilterControlAltText="Filter ShipVia column"
												 HeaderText="ShipVia" SortExpression="ShipVia" UniqueName="ShipVia">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="Freight" FilterControlAltText="Filter Freight column"
												 HeaderText="Freight" SortExpression="Freight" UniqueName="Freight" DataType="System.Decimal">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipName" FilterControlAltText="Filter ShipName column"
												 HeaderText="ShipName" SortExpression="ShipName" UniqueName="ShipName">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipAddress" FilterControlAltText="Filter ShipAddress column"
												 HeaderText="ShipAddress" SortExpression="ShipAddress" UniqueName="ShipAddress">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipCity" FilterControlAltText="Filter ShipCity column"
												 HeaderText="ShipCity" SortExpression="ShipCity" UniqueName="ShipCity">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipRegion" FilterControlAltText="Filter ShipRegion column"
												 HeaderText="ShipRegion" SortExpression="ShipRegion" UniqueName="ShipRegion">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipPostalCode" FilterControlAltText="Filter ShipPostalCode column"
												 HeaderText="ShipPostalCode" SortExpression="ShipPostalCode" UniqueName="ShipPostalCode">
						</telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="ShipCountry" FilterControlAltText="Filter ShipCountry column"
												 HeaderText="ShipCountry" SortExpression="ShipCountry" UniqueName="ShipCountry">
						</telerik:GridBoundColumn>
					</Columns>
					<EditFormSettings>
						<EditColumn FilterControlAltText="Filter EditCommandColumn column">
						</EditColumn>
					</EditFormSettings>
					<PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
				</MasterTableView>
				<PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
				<FilterMenu EnableImageSprites="False">
				</FilterMenu>
			</telerik:RadGrid>
			<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="NorthwindLinqToSql.NorthwindLinqToSqlDataContext"
								EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
								TableName="Orders">
			</asp:LinqDataSource>
		</form>
	</body>
</html>