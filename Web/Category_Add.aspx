﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Category_Add.aspx.vb" Inherits="Web_Category_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="categoryDS">
                <EditItemTemplate>
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" PostBackUrl="CategoryData.aspx" Text="Insert" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="CategoryData.aspx" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CategoryKey:
                    <asp:Label ID="CategoryKeyLabel" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    CategoryName:
                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="categoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
