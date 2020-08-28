<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="iOS" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <my:CustomLayout runat="server" ID="formLayout" AlignItemCaptionsInAllGroups="True" >
            <Items>
                <dx:LayoutGroup GroupBoxDecoration="None">
                    <Items>
                        <dx:LayoutItem Caption="Select record">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxComboBox ID="navigateComboBox" runat="server" ValueType="System.String" AutoPostBack="true"
                                        SelectedIndex="0" OnSelectedIndexChanged="navigateComboBox_SelectedIndexChanged">
                                        <Items>
                                            <dx:ListEditItem Value="1" Text="Employee #1" />
                                            <dx:ListEditItem Value="2" Text="Employee #2" />
                                            <dx:ListEditItem Value="3" Text="Employee #3" />
                                            <dx:ListEditItem Value="4" Text="Employee #4" />
                                            <dx:ListEditItem Value="5" Text="Employee #5" />
                                        </Items>
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:EmptyLayoutItem />
                <dx:LayoutGroup Caption="Personal Information" ColCount="2">
                    <Items>
                        <dx:LayoutItem Caption="First Name" FieldName="FirstName" RequiredMarkDisplayMode="Required">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer2" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxTextBox ID="firstNameTextBox" runat="server" Width="170px" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Last Name" FieldName="LastName">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer3" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxTextBox ID="lastNameTextBox" runat="server" Width="170px" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Birth Date" FieldName="BirthDate">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer4" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxDateEdit ID="birthDateEdit" runat="server" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutGroup Caption="Work Information" ColCount="2">
                    <Items>
                        <dx:LayoutItem Caption="Position" FieldName="Title">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer5" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxTextBox ID="titleTextBox" runat="server" Width="170px" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Hire Date" FieldName="HireDate">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer6" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxDateEdit ID="hireDateEdit" runat="server" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Notes" ColSpan="2" FieldName="Notes">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer7" runat="server"
                                    SupportsDisabledAttribute="True">
                                    <dx:ASPxMemo ID="notesMemo" runat="server" Height="71px" Width="100%" Rows="8" />
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right" Width="150">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer8" runat="server"
                            SupportsDisabledAttribute="True">
                            <dx:ASPxButton ID="updateButton" runat="server" Text="Update Record" OnClick="updateButton_Click"
                                Width="150" />
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </my:CustomLayout>
        <dx:ASPxLabel runat="server" ID="errorMessageLabel" Visible="false" ForeColor="Red"
            EnableViewState="false" EncodeHtml="false" />
        <asp:SqlDataSource ID="MainSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [HireDate], [Notes], [Title] FROM [Employees] WHERE ([EmployeeID] = @EmployeeID)"
            DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employees] ([LastName], [FirstName], [BirthDate], [HireDate], [Notes], [Title]) VALUES (@LastName, @FirstName, @BirthDate, @HireDate, @Notes, @Title)"
            UpdateCommand="UPDATE [Employees] SET [LastName] = @LastName, [FirstName] = @FirstName, [BirthDate] = @BirthDate, [HireDate] = @HireDate, [Notes] = @Notes, [Title] = @Title WHERE [EmployeeID] = @EmployeeID">
            <SelectParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" DefaultValue="1" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="formLayout$firstNameTextBox" Name="FirstName" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="formLayout$lastNameTextBox" Name="LastName" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="formLayout$titleTextBox" Name="Title" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="formLayout$birthDateEdit" Name="BirthDate" PropertyName="Value"
                    Type="DateTime" />
                <asp:ControlParameter ControlID="formLayout$hireDateEdit" Name="HireDate" PropertyName="Value"
                    Type="DateTime" />
                <asp:ControlParameter ControlID="formLayout$notesMemo" Name="Notes" PropertyName="Text"
                    Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <dx:ASPxLabel ID="lblResult" runat="server" EncodeHtml="False">
    </dx:ASPxLabel>
    </form>
</body>
</html>
