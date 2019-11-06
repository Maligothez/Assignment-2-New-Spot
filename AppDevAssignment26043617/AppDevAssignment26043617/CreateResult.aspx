<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="CreateResult.aspx.cs" Inherits="AppDevAssignment26043617.CreateResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
        </div>
        <table width="100%">
            <tr>
                <td>
                    Unit Code
                </td>
                <td>
                    <asp:TextBox runat="server" ID="UnitCodeBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="UnitCodeValidator" runat="server"
                                                ControlToValidate="UnitCodeBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the Unit Code" Display="Dynamic">
                        You must enter a unit code.
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegexValidatorUnitCode" runat="server" ControlToValidate="UnitCodeBox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid  3 letter, 4 number unit code. Eg: CS12016"
                        ValidationExpression="[A-Za-z]{3}[0-9]{4}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Student ID
                </td>
                <td>
                    <asp:TextBox runat="server" ID="StudentIdBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="studentValidator" runat="server"
                                                ControlToValidate="StudentIdBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter a Student ID" Display="Dynamic">
                        You must enter a Student ID
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="StudentRegexValidator" runat="server" ControlToValidate="StudentIdbox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter a valid  3 letter, 4 number unit code. Eg: CS12016"
                        ValidationExpression="^[1-9][0-9]{7}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Semester
                </td>
                <td>
                    <asp:TextBox runat="server" ID="SemesterBox" Width="100%"></asp:TextBox>

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
                        ValidationExpression="^[1-2]{1}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Year
                </td>
                <td>
                    <asp:TextBox runat="server" ID="YearBox" Width="100%"></asp:TextBox>

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
                        ValidationExpression="^{4}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Semester
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox1" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="SemesterBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the semester." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="SemesterBox"
                        ValidationGroup="FormValidate"
                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter either 1 or 2"
                        ValidationExpression="^[1-2]{1}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Assesment 1
                </td>
                <td>
                    <asp:TextBox runat="server" ID="Assesment1Box" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="Asses1Validator" runat="server"
                                                ControlToValidate="Assessment1Box" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the first Assessment score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="Assess1Range" runat="server" ControlToValidate="Assesment1Box"
                Type="Integer" ErrorMessage="Enter an integer, 0 to 100" MaximumValue="100"
                MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
        </td>
                </td>
            </tr>
            <tr>
                <td>
                   Assessment 2
                </td>
                <td>
                    <asp:TextBox runat="server" ID="Assesment2Box" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="Assess2Validator" runat="server"
                                                ControlToValidate="Assessment2Box" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the second Assessment score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="Assess2Range" runat="server" ControlToValidate="Assesment2Box"
                Type="Integer" ErrorMessage="Enter an integer, 0 to 100" MaximumValue="100"
                MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>

            <tr>
                <td>
                   Exam
                </td>
                <td>
                    <asp:TextBox runat="server" ID="ExamBox" Width="100%"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="ExamValidate" runat="server"
                                                ControlToValidate="ExamBox" ForeColor="Red"
                                                ValidationGroup="FormValidate"
                                                ToolTip="Please enter the Exam Score." Display="Dynamic">
                        You must enter a semester.
                    </asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="ExamRange" runat="server" ControlToValidate="ExamBox"
                Type="Integer" ErrorMessage="Enter an integer, 0 to 100" MaximumValue="100"
                MinimumValue="0" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Outline
                </td>
                <td>
                    file upload control goes here
                </td>
            </tr>
        </table>
        <div>
            <asp:Button runat="server" ID="btnSave" Text="Save" ValidationGroup="FormValidate" OnClick="btnSave_Click"/>
            <asp:Button runat="server" ID="cancelBtn" Text="Cancel" OnClick="btnCancel_Click"/>
        </div>
    </section>
</asp:Content>