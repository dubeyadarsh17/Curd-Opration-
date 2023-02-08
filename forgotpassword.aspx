<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="ResitrationForm.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .Button {
            background-color: #FF5A00;
            color: #FFFFFF;
            font-weight: bold;
            margin-right: 2px;
            padding: 4px 20px 4px 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="2" cellpadding="2" border="0">
                <tr>
                    <td></td>
                    <td><b>Forgot Password Example</b></td>
                </tr>
                <tr>
                    <td><b>Enter Your Email:</b></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="Button" OnClick="btnSubmit_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="color: red">
                        <asp:Label ID="lbltxt" runat="server" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
