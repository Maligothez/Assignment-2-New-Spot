<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ManageResults.aspx.cs" Inherits="AppDevAssignment26043617.ManageResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="manageResultsView" runat="server"
                DataKeyNames="ResultsID" GroupItemCount="4"
                ItemType="AppDevAssignment26043617.Models.Results" SelectMethod="GetResults">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td>
                            <a href="UnitResults.aspx?ID=<%#:Item.ResultsID %>"><%#:Item.UnitId %><%#:Item.StudentID %></a>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <tbody>
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
