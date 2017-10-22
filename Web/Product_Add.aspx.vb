
Partial Class Web_Product_Add
    Inherits System.Web.UI.Page

    Private Sub Web_Product_Add_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Private Sub productDS_Inserting(sender As Object, e As SqlDataSourceCommandEventArgs) Handles productDS.Inserting
        Response.Redirect("ProductData.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
