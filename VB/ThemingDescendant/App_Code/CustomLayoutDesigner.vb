Imports System.ComponentModel
Imports DevExpress.Web
Imports DevExpress.Web.Design

Namespace CustomLayout
    <ToolboxItem(False)> _
    Public Class CustomLayoutDesigner
        Inherits ASPxFormLayoutDesigner

        Public Overrides Sub Initialize(ByVal component As IComponent)
            MyBase.Initialize(component)
            RegisterTagPrefix(GetType(ASPxFormLayout))
        End Sub
    End Class
End Namespace