Imports System
Imports System.Collections.Generic
Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub OnInit(ByVal e As EventArgs)
        formLayout.CssPostfix = Me.Page.Theme

        MyBase.OnInit(e)
    End Sub

    Protected Sub navigateComboBox_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        MainSource.SelectParameters("EmployeeID").DefaultValue = navigateComboBox.Value.ToString()
        formLayout.DataBind()
    End Sub

    Protected Sub updateButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Try
            MainSource.UpdateParameters("EmployeeID").DefaultValue = navigateComboBox.Value.ToString()
            MainSource.Update()
        Catch ex As Exception
            errorMessageLabel.Text = ex.Message
            errorMessageLabel.Visible = True
        End Try
    End Sub
End Class