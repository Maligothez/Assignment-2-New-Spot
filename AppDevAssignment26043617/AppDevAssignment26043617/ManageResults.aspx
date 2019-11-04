<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ManageResults.aspx.cs" Inherits="AppDevAssignment26043617.ManageResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="manageResults" runat="server" 
                DataKeyNames="UnitId" GroupItemCount="4"
                ItemType="AppDevAssignment26043617.Models.Results" SelectMethod="GetUnit">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="ManageResults.aspx?ResultId=<%#:Item.ResultId%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ManageResult.aspx?resultid=<%#:Item.Assessment1Score%>">
                                        <span>
                                            <%#:Item.Assessment1Score%>
                                        </span>
                                    </a>
                                    <br />
                                    <a href="ManageResult.aspx?resultid=<%#:Item.Assessment2Score%>">
                                        <span>
                                            <%#:Item.Assessment2Score%>
                                        </span>
                                    <br />
                                        <span>
                                        <a href="ManageResult.aspx?resultid=<%#:Item.Exam%>">
                                        <span>
                                            <%#:Item.Exam%>
                                        </span>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>