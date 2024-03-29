﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="EditUnit.aspx.cs" Inherits="AppDevAssignment26043617.EditUnit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
        </div>
        <div>
            <h3><asp:Label runat="server" ID="unitCodeLabel"></asp:Label></h3>
        </div>
        <br />
        <table width="100%">
            <tr>
                <td>Title
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
                <td>Coordinator
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
                <td>Outline
                </td>
                <td>
                    <asp:HyperLink Visible="False" ID="existingFileLink" runat="server"></asp:HyperLink>

                    <asp:FileUpload runat="server" ID="unitFileUpload"/>
                </td>
            </tr>
        </table>

        <div>
            <asp:Button runat="server" ID="btnSave" ValidationGroup="FormValidate" Text="Save" OnClick="btnSave_Click" />
            <asp:Button runat="server" ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this?')" />
            <asp:Button runat="server" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
        </div>
    </section>
</asp:Content>
