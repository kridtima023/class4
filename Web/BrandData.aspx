<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BrandData.aspx.vb" Inherits="BrandData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Brand</title>

    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <center>
   <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="tbbrand" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
        <asp:Button ID="btnAddBrand" runat="server" Text="Add Brand" PostBackUrl="Brand_Add.aspx" />
        <br />
        <br />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="brandkey" DataSourceID="brandDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="brandname" HeaderText="brandname" SortExpression="brandname" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="usermodify" HeaderText="usermodify" SortExpression="usermodify" />
                <asp:BoundField DataField="modifydate" HeaderText="modifydate" SortExpression="modifydate" />
                <asp:HyperLinkField DataNavigateUrlFields="brandkey" DataNavigateUrlFormatString="Brand_Edit.aspx?Brandkey={0}" HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" />
                <asp:HyperLinkField DataNavigateUrlFields="brandkey" DataNavigateUrlFormatString="Brand_View.aspx?Brandkey={0}" HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="index.aspx" Text="Back" />
    </div>
        <asp:SqlDataSource ID="brandDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Brand] 
WHERE brandName LIKE '%' + ISNULL(@searchBrandName, brandname) + '%'
ORDER BY [brandname]" CancelSelectOnNullParameter="False">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbbrand" Name="searchBrandName" PropertyName="Text" />
            </SelectParameters>
       </asp:SqlDataSource>
    </form>
    </center>
</body>
</html>
