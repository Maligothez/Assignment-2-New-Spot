<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewReports.aspx.cs" Inherits="AppDevAssignment26043617.ViewReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
            
            <hgroup><h3>Results by Unit</h3></hgroup>
            <asp:ListView ID="viewReportsView" runat="server"
                          DataKeyNames="UnitId" GroupItemCount="4"
                          ItemType="AppDevAssignment26043617.Models.Units" SelectMethod="GetUnits">
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
                            <a href="UnitResults.aspx?ID=<%#:Item.UnitId %>"><%#:Item.UnitCode %></a>
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
            
            <hgroup><h3>Results by Students</h3></hgroup>
            <asp:ListView ID="viewStudentsView" runat="server"  GroupItemCount="4" ItemType="System.Int32" SelectMethod="GetStudents">
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
                            <a href="ViewStudentResults.aspx?ID=<%#:Item %>"><%#:Item.ToString("D8") %></a>
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
