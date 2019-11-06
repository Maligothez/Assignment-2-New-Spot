﻿<%@ Page Title="Units" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ManageUnits.aspx.cs" Inherits="AppDevAssignment26043617.ManageUnits" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="manageUnitsView" runat="server"
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
                            <a href="ManageUnits.aspx?ID=<%#:Item.UnitId %>"><%#:Item.UnitCode %></a>
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