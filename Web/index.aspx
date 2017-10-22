<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Web_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
    <title>index</title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            Select Data<br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="BrandData.aspx" Text="Brand" />
            <asp:Button ID="Button2" runat="server" PostBackUrl="CategoryData.aspx" Text="Category" />
            <asp:Button ID="Button3" runat="server" PostBackUrl="ProductData.aspx" Text="Product" />
            <asp:Button ID="Button4" runat="server" PostBackUrl="UnitData.aspx" Text="Unit" />
        </div>
    </form>
    </center>
</body>
</html>
