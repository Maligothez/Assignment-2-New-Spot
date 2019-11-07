<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="ViewStudentResults.aspx.cs" Inherits="AppDevAssignment26043617.ViewStudentResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
            
            <asp:ListView ID="viewStudentResultsView" runat="server"
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
                            <a href="EditResult.aspx?ID=<%#:Item.ResultsID %>"><%#:Item.ResultsID %></a>
                        </td>
                        <td>
                            <a href="EditResult.aspx?ID=<%#:Item.ResultsID %>"><%#:Item.StudentID %></a>
                        </td>
                        <td>
                            <a href="EditResult.aspx?ID=<%#:Item.ResultsID %>"><%#:Item.Unit.UnitCode %></a>
                        </td>
                        <td>
                            <%#:Item.Semester %>
                        </td>
                        <td>
                            <%#:Item.Year %>
                        </td>
                        <td>
                            <%#:Item.Grade %>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <thead>
                        <tr>
                            <th>Result ID</th>
                            <th>Student ID</th>
                            <th>Unit Code</th>
                            <th>Semester</th>
                            <th>Year</th>
                            <th>Grade</th>
                        </tr>
                        </thead>
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