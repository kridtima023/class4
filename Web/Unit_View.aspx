<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Unit_View.aspx.vb" Inherits="Web_Unit_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="unitDS">
                <EditItemTemplate>
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UnitKey:
                    <asp:Label ID="UnitKeyLabel" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:Label ID="UnitABBRLabel" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="UnitData.aspx" Text="Cancel" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="unitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Unit]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
