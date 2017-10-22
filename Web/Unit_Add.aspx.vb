
Partial Class Web_Unit_Add
    Inherits System.Web.UI.Page

    Private Sub Web_Unit_Add_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Private Sub unitDS_Inserting(sender As Object, e As SqlDataSourceCommandEventArgs) Handles unitDS.Inserting
        Response.Redirect("UnitData.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
