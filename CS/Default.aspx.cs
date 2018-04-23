using System;
using System.Collections.Generic;
public partial class _Default : System.Web.UI.Page
{
    protected override void OnInit(EventArgs e)
    {
        formLayout.CssPostfix = this.Page.Theme; 
        
        base.OnInit(e);
    }

    protected void navigateComboBox_SelectedIndexChanged(object sender, EventArgs e) {
        MainSource.SelectParameters["EmployeeID"].DefaultValue = navigateComboBox.Value.ToString();
        formLayout.DataBind();
    }

    protected void updateButton_Click(object sender, EventArgs e) {
        try {
            MainSource.UpdateParameters["EmployeeID"].DefaultValue = navigateComboBox.Value.ToString();
            MainSource.Update();
        }
        catch(Exception ex) {
            errorMessageLabel.Text = ex.Message;
            errorMessageLabel.Visible = true;
        }
    }
}