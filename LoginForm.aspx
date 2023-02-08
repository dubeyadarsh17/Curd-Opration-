<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ResitrationForm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
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

    <%-- <form id="form2" runat="server" >
       
        <div class="main">
            <div class="in">
                <h1>&nbsp;&nbsp; Login</h1>
                <img src="image/user%20(1).png" class="auto-style1 py-3" />
                <br />
       
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter email" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True" ValidationGroup="hii"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid email" ForeColor="#33CCCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="hii"></asp:RegularExpressionValidator>
                <br />
                <br />
              
               
                <asp:TextBox ID="TextBox2" placeholder="password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter password " ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True" ValidationGroup="hii"></asp:RequiredFieldValidator>

            </div>
          
            <br />

            <div class="bcon">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="py-1" ValidationGroup="hii" Width="124px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="RegistrationForm.aspx">Register</asp:HyperLink>
               
            </div>
        </div>
        
    </form>--%>
</body>
</html>

<%--<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center" style="border-style: solid" >LOGIN </h1>

            <table align="center" style="border-style: solid">
                <%--<panel>
                    <h2 style="border-style: solid" class="auto-style6">LOGIN </h2>
                </panel>--%>
<%--  <tr>
        <td class="auto-style1" style="border-style: solid"><strong>Email</strong></td>
                    <td style="border-style: solid" class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter email" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True" ValidationGroup="hii"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid email" ForeColor="#33CCCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="hii"></asp:RegularExpressionValidator>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style3" style="border-style: solid"><strong>Password</strong></td>
                    <td class="auto-style4" style="border-style: solid">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter password " ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True" ValidationGroup="hii"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <p align="center">
            <asp:Button ID="Button1" Style="border-style: solid" runat="server" Text="Login" OnClick="Button1_Click" CssClass="auto-style2" ValidationGroup="hii" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="RegistrationForm.aspx">Register</asp:HyperLink>
        </p>
    </form>
</body>
</html>--%>
