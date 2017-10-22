
Partial Class Web_Category_Edit
    Inherits System.Web.UI.Page

    Private Sub categoryDS_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles categoryDS.Updated
        Response.Redirect("CategoryData.aspx")
    End Sub

    Private Sub Web_Category_Edit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Edit)
        End If


    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
