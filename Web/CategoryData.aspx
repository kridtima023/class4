<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CategoryData.aspx.vb" Inherits="Web_Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category</title>

    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbcategory" runat="server"></asp:TextBox>
            <asp:Button ID="btcategory" runat="server" Text="Search" />
            <asp:Button ID="Button1" runat="server" PostBackUrl="Category_Add.aspx" Text="Add Category" />
            <br />
            <br />
        </div>
        <asp:GridView ID="gvcategory" runat="server" AutoGenerateColumns="False" DataSourceID="categoryDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_Edit.aspx?Categorykey={0}" HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_View.aspx?Categorykey={0}" HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="index.aspx" Text="Back" />
        <asp:SqlDataSource ID="categoryDS" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Category] 
WHERE CategoryName LIKE '%' + ISNULL(@searchCategoryName, CategoryName) + '%'
ORDER BY [CategoryName]">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbcategory" Name="searchCategoryName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
        </center>
</body>
</html>
