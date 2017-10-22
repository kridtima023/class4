<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UnitData.aspx.vb" Inherits="Web_Unit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit</title>

    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbunit" runat="server"></asp:TextBox>
            <asp:Button ID="btunit" runat="server" Text="Search" />
            <asp:Button ID="Button2" runat="server" PostBackUrl="Unit_Add.aspx" Text="Add Unit" />
            <br />
            <br />
        </div>
        <asp:GridView ID="gvunit" runat="server" AutoGenerateColumns="False" DataSourceID="unitDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="UnitName" HeaderText="UnitName" SortExpression="UnitName" />
                <asp:BoundField DataField="UnitABBR" HeaderText="UnitABBR" SortExpression="UnitABBR" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:HyperLinkField HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="Unit_Edit.aspx?Unitkey={0}" />
                <asp:HyperLinkField HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="Unit_View.aspx?Unitkey={0}" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="index.aspx" Text="Back" />
        <asp:SqlDataSource ID="unitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Unit] 
WHERE UnitName LIKE '%' + ISNULL(@searchUnitName, UnitName) + '%'
ORDER BY [UnitName]" CancelSelectOnNullParameter="False">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbunit" Name="searchUnitName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    </center>
</body>
</html>
