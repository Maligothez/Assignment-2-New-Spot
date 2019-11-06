<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site.Master" CodeBehind="CreateUnit.aspx.cs" Inherits="AppDevAssignment26043617.CreateUnit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
        </div>
        <table width="100%">
            <tr>
                <td>Unit Code
                </td>
                <td>
                    <asp:TextBox runat="server" ID="UnitCodeBox" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Title
                </td>
                <td>
                    <asp:TextBox runat="server" ID="UnitTitleBox" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Coordinator
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CoordinatorBox" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Outline
                </td>
                <td>file upload control goes here
                </td>
            </tr>
        </table>
        <div>
            <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
            <asp:Button runat="server" ID="cancelBtn" Text="Cancel" OnClick="btnCancel_Click" />
        </div>
    </section>
</asp:Content>
