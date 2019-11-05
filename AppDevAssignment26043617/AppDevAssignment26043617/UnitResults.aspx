<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="UnitResults.aspx.cs" Inherits="AppDevAssignment26043617.UnitResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="unitResultsView" runat="server"
                DataKeyNames="UnitId" GroupItemCount="4"
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
                            <a href="ManageResults.aspx?ID=<%#:Item.UnitId %>"><%#:Item.Units.UnitCode %></a>
                        </td>
                        <td>
                            <a href="ManageResults.aspx?ResultsID=<%#:Item.ResultsID %>"><%#:Item.ResultsID %></a>
                        </td>
                        <td>
                            <%#:Item.StudentID.ToString("D8") %>
                        </td>
                        <td>
                            <%#:Item.Assessment1Score %>
                        </td>
                        <td>
                            <%#:Item.Assessment2Score %>
                        </td>
                        <td>
                            <%#:Item.Exam %>
                        </td>
                        <td>
                            <%#:Item.UnitScore %>
                        </td>
                        <td>
                            <%#:Item.Grade %>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <thead>
                            <tr>
                                <th>Unit Code</th>
                                <th>Result ID</th>
                                <th>Student ID</th>
                                <th>Assessment 1</th>
                                <th>Assessment 2</th>
                                <th>Exam</th>
                                <th>Unit Score</th>
                                <th>Grade</th>
                                <th>Student Photo</th>
                                <th>Unit Outline</th>
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
