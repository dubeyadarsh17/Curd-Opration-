<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="ResitrationForm.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />

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
            /* background-image: url('/image/bg.jpg');
            background-size: cover;*/
            background: linear-gradient(90deg,#C7C5F4,#776BCC);
        }

        .login-form {
            margin-top: 61px;
        }

        .img {
            height: 122px;
            margin-top: -5px;
            margin-left: 126px;
        }

        body {
            /*background-image: url('/image/bg.jpg');
            background-size: cover;*/
            background: linear-gradient(90deg,#C7C5F4,#776BCC);
        }
    </style>

    <title></title>
</head>
<body>
    <div class="container justify-content-center mt-8">
        <div class="card">
            <div class="card-body">
                <form class="login-form" runat="server">
                    <div class="in mb-4">
                        <h1 style="margin-top: -70px; margin-left: 133px;">Login</h1>
                        <img src="image/user%20(1).png" class="img" />
                    </div>
                    <div class="mb-1 bgcl">

                        <asp:TextBox ID="TextBox1" placeholder="email" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="email is  empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic" ValidationGroup="login"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invaild email" ForeColor="blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="login"></asp:RegularExpressionValidator>
                    </div>
                    <div class="mb-1  bgcl">

                        <asp:TextBox ID="TextBox2" placeholder="password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="password is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic" ValidationGroup="login"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="TextBox2" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True" ValidationGroup="login"></asp:RegularExpressionValidator>
                    </div>
                    <div class="d-flex align-items-center justify-content-center gap-4">

                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-outline-primary" OnClick="Button1_Click" ValidationGroup="login" />
                        <asp:Button ID="Button2" runat="server" Text="register" OnClick="Button2_Click1" class="btn btn-outline-dark" />
                    </div>
                    <div class="mb-3 d-grid gap-2" style="margin-top: 15px">

                        <center>
                            <asp:LinkButton ID="LinkButton1" runat="server" href="forgotpassword.aspx">ForgetPassword</asp:LinkButton>
                        </center>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
