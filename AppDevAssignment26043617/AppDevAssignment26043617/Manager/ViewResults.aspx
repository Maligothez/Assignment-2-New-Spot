<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ViewResults.aspx.cs" Inherits="AppDevAssignment26043617.ViewResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <table>
                <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Unit Code</th>
                    <th>Semester</th>
                    <th>Year</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <asp:DropDownList runat="server" ID="filterStudent" SelectMethod="GetStudentIds" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Text="All" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>

                        <asp:DropDownList runat="server" ID="filterUnit" SelectMethod="GetUnitCodes" DataTextField="UnitCode" DataValueField="UnitId" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Text="All" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="filterSemester" SelectMethod="GetSemesters" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Text="All" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="filterYear" SelectMethod="GetYears" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem Text="All" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                </tbody>
            </table>
            <br/>
            <asp:ListView ID="unitResultsView" runat="server"
                DataKeyNames="UnitId" GroupItemCount="4"
                ItemType="AppDevAssignment26043617.Models.Results">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <GroupTemplate>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </GroupTemplate>
                <ItemTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td>
                            <%#:Item.Unit.UnitCode %>
                        </td>
                        <td>
                            <a href="EditResult.aspx?ID=<%#:Item.ResultsID %>"><%#:Item.ResultsID %></a>
                        </td>
                        <td>
                            <%#:Item.StudentID.ToString("D8") %>
                        </td>
                        <td>
                            <%#:Item.Semester %>
                        </td>
                        <td>
                            <%#:Item.Year %>
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
                        <td>
                            <asp:Image runat="server" Height="50px" Width="50px" Visible="<%# Item.FileId != null ? true : false %>" ImageUrl="<%#:Item.FilePath %>" /></td>
                        <td>
                            <asp:HyperLink Visible="<%# Item.Unit.FileId != null ? true : false %>" href="<%#:Item.Unit.FilePath %>" runat="server"><%# Item.Unit.FileId != null ? Item.Unit.File.Name : "" %></asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <thead>
                            <tr>
                                <th>Unit Code</th>
                                <th>Result ID</th>
                                <th>Student ID</th>
                                <th>Semester</th>
                                <th>Year</th>
                                <th>Assessment 1</th>
                                <th>Assessment 2</th>
                                <th>Exam</th>
                                <th>Unit Score</th>
                                <th>Grade</th>
                                <th>Student Photo</th>
                                <th>Unit Outline</th>
                            </tr>
                        </thead>
                        <tbody id="groupPlaceholder" runat="server">
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
        <div>
            <asp:Label runat="server" ID="ResultsLabel"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="GradeLabel"></asp:Label>
        </div>
    </section>
</asp:Content>
