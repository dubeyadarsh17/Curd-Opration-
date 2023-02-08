<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DashBoard.Master" CodeBehind="ChangePassUser.aspx.cs" Inherits="ResitrationForm.ChangePassUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title></title>

        <style>
            .card {
                width: 29rem;
                margin-top: 58px;
                margin-left: 374px;
                border-radius: 55px;
                box-shadow: hotpink;
                box-shadow: white;
                box-shadow: 0px 0px 9px;
                overflow: hidden;
            }

            .card-body {
                padding: 30px 42px 72px;
            }

            .details {
                margin-top: 61px;
            }
        </style>
    </head>
    <body>
        <div class="container justify-content-center mt-8">

            <div class="card">
                <div class="card-body">
                    <form class="details">
                        <div>
                            <h2 style="margin-top: -70px; margin-left: 75px;">Change Password</h2>

                        </div>
                        <div>
                            Old Password
                        </div>
                        <div>
                            <asp:TextBox ID="oldpassword" class="form-control" runat="server" ValidationGroup="regi"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" old password is empty" ControlToValidate="oldpassword" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="regi"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="oldpassword" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                        </div>
                        <div>
                            New Password
                        </div>
                        <div>
                            <asp:TextBox ID="newpassword" class="form-control" runat="server" ValidationGroup="regi"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" new password is empty" ControlToValidate="newpassword" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="regi"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="newpassword" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                        </div>
                        <div>
                            Confirm Password
                        </div>
                        <div class="mb-5">
                            <asp:TextBox ID="conpasswod" runat="server" class="form-control" ValidationGroup="regi"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="confirm password is empty" ControlToValidate="conpasswod" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="regi"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="conpasswod" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="newpassword" ControlToValidate="conpasswod" Display="Dynamic" ErrorMessage="your pass must be same your new password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="regi"></asp:CompareValidator>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button ID="Button2" class="form-control" runat="server" Text="Update" OnClick="Button1_Click" ValidationGroup="regi" />
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <%--<form id="form1" runat="server">
        <div>
             <table>

                <tr>
                    <td>Old Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="oldpassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" old password is empty" ControlToValidate="oldpassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="newpassword" runat="server" Width="117px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" new password is empty" ControlToValidate="newpassword" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="conpasswod" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="confirm password is empty" ControlToValidate="conpasswod" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="newpassword" ControlToValidate="conpasswod" Display="Dynamic" ErrorMessage="your pass must be same your new password" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>--%>
    </body>
    </html>
</asp:Content>
