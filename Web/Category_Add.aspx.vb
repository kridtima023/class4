
Partial Class Web_Category_Add
    Inherits System.Web.UI.Page

    Private Sub categoryDS_Inserting(sender As Object, e As SqlDataSourceCommandEventArgs) Handles categoryDS.Inserting
        Response.Redirect("CategoryData.aspx")
    End Sub

    Private Sub Web_Category_Add_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
