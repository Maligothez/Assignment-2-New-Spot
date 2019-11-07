<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="ManageResult.aspx.cs" Inherits="AppDevAssignment26043617.ManageResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
        </div>
        <br />
        <table width="100%">
            <tr>
                <td>Unit Code
                </td>
                <td>
                    <asp:DropDownList runat="server"
                        ItemType="AppDevAssignment26043617.Models.Units"
                        SelectMethod="GetUnits"
                        DataValueField="UnitId"
                        DataTextField="UnitCode"
                        ID="UnitCodeSelect" Width="100%">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="UnitCodeValidator" runat="server"
                        ControlToValidate="UnitCodeSelect" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter the Unit Code" Display="Dynamic">
                        You must select a unit code.
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Student ID
                </td>
                <td>
                    <asp:TextBox runat="server" ID="StudentIdBox" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="studentValidator" runat="server" TextMode="Number"
                        ControlToValidate="StudentIdBox" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter a Student ID" Display="Dynamic">
                        You must enter a Student ID
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="StudentRegexValidator" runat="server" ControlToValidate="StudentIdbox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid 8 digit student ID"
                        ValidationExpression="^[1-9][0-9]{7}$">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Semester
                </td>
                <td>
                    <asp:TextBox runat="server" ID="SemesterBox" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="SemesterValidate" runat="server"
                        ControlToValidate="SemesterBox" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter the semester." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="SemesterRegulator" runat="server" ControlToValidate="SemesterBox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter either 1 or 2"
                        ValidationExpression="^[1-2]{1}$">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Year
                </td>
                <td>
                    <asp:TextBox runat="server" ID="YearBox" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="YearRequiredValidator" runat="server"
                        ControlToValidate="YearBox" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter a year" Display="Dynamic">
                        You must enter a year
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="YearRegular" runat="server" ControlToValidate="YearBox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid year."
                        ValidationExpression="^[1-2][0-9]{3}$">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Assessment 1
                </td>
                <td>
                    <asp:TextBox runat="server" ID="Assessment1Box" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="Asses1Validator" runat="server"
                        ControlToValidate="Assessment1Box" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter the first Assessment score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="Assess1Range" runat="server" ValidationGroup="FormValidate" ControlToValidate="Assessment1Box"
                        Type="Integer" ErrorMessage="Enter an integer, 0 to 20" MaximumValue="20"
                        MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Assessment 2
                </td>
                <td>
                    <asp:TextBox runat="server" ID="Assessment2Box" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="Assess2Validator" runat="server"
                        ControlToValidate="Assessment2Box" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter the second Assessment score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="Assess2Range" runat="server" ValidationGroup="FormValidate" ControlToValidate="Assessment2Box"
                        Type="Integer" ErrorMessage="Enter an integer, 0 to 20" MaximumValue="20"
                        MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>

            <tr>
                <td>Exam
                </td>
                <td>
                    <asp:TextBox runat="server" ID="ExamBox" Width="100%" TextMode="Number"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="ExamValidate" runat="server"
                        ControlToValidate="ExamBox" ForeColor="Red"
                        ValidationGroup="FormValidate"
                        ToolTip="Please enter the Exam Score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="ExamRange" runat="server" ValidationGroup="FormValidate" ControlToValidate="ExamBox"
                        Type="Integer" ErrorMessage="Enter an integer, 0 to 60" MaximumValue="60"
                        MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Student Photo
                </td>
                <td>
                    <asp:FileUpload runat="server" ID="StudentPhoto" accept=".png,.jpg,.jpeg,.gif" />
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
