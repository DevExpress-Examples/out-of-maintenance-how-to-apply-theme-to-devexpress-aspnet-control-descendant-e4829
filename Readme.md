# How to apply theme to DevExpress ASP.NET Control Descendant


<p>How to apply a theme to a DevExpress control descendant</p><p>To apply a theme to Custom Control that uses some of DevExpress controls you need to apply a global theme for the page or for the entire application. In order to do that, use the ThemeDeployer tool to copy necessary files to your project folder. Note that our controls may use other simple controls, for example ASPxComboBox. So it is a good idea to copy files for all the controls.</p><p>After that you need to add some code to the page's Init event handler:</p>

```cs
formLayout.CssPostfix = this.Page.Theme;

```

<p>The CssPostfix property is related only with DevExpress controls and cannot be used with standard ASP.NET controls.</p>

<br/>


