<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateUnit.aspx.cs" Inherits="AppDevAssignment26043617.CreateUnit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
        </div>
        <table width="100%">
            <tr>
                <td>
                    Unit Code
                </td>
                <td>
                    <asp:TextBox runat="server" ID="UnitCodeBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="UnitCodeValidator" runat="server"
                                                ControlToValidate="UnitCodeBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the Unit Code" Display="Dynamic">
                        You must enter a unit code.
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegexValidatorUnitCode" runat="server" ControlToValidate="UnitCodeBox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid  3 letter, 4 number unit code. Eg: CS12016"
                        ValidationExpression="[A-Za-z]{3}[0-9]{4}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Title
                </td>
                <td>
                    <asp:TextBox runat="server" ID="UnitTitleBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="titleValidator" runat="server"
                                                ControlToValidate="UnitTitleBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the Unit title" Display="Dynamic">
                        You must enter a unit title.
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Coordinator
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CoordinatorBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="CoordinatorValidate" runat="server"
                                                ControlToValidate="CoordinatorBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the coordinator." Display="Dynamic">
                        You must enter a unit coordinator.
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Outline
                </td>
                <td>
                    <asp:FileUpload runat="server" ID="unitFileUpload"/>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button runat="server" ID="btnSave" Text="Save" ValidationGroup="FormValidate" OnClick="btnSave_Click"/>
            <asp:Button runat="server" ID="cancelBtn" Text="Cancel" OnClick="btnCancel_Click"/>
        </div>
    </section>
</asp:Content>