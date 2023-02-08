<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ResitrationForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <style>
        .card {
            width: 29rem;
            margin-top: 20px;
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
        }

        .login-form {
            margin-top: 61px;
        }

        body {
            /*  background-image: url('/image/bg.jpg');
            background-size: cover;*/
        }

        .img {
            vertical-align: middle;
            margin-left: 131px;
            margin-top: -22px;
        }

      
    </style>

    <title></title>
    <%-- <style type="text/css">
        .auto-style9 {
            width: 437px;
        }

        .auto-style20 {
            width: 437px;
            height: 74px;
            text-align: center;
        }

        .auto-style23 {
            height: 19px;
            width: 437px;
        }

        .auto-style26 {
            width: 437px;
            height: 22px;
        }

        .auto-style27 {
            width: 14px;
            text-align: center;
            height: 22px;
        }

        .auto-style28 {
            width: 14px;
            text-align: center;
        }

        .auto-style29 {
            width: 14px;
            text-align: center;
            height: 19px;
        }

        .auto-style30 {
            width: 14px;
            text-align: center;
            height: 74px;
        }

        .auto-style32 {
            width: 14px;
            text-align: left;
            height: 14px;
        }

        .auto-style35 {
            background-color: #00CC66;
        }

        .auto-style37 {
            text-align: left;
            height: 85px;
        }--%>
</head>
<body>

    <div class="container justify-content-center mt-8">

        <div class="card">
            <div class="card-body">
                <form class="login-form" runat="server">
                    <div>
                        <h1 style="margin-top: -70px; margin-left: 75px;">Registration</h1>
                    </div>
                    <div>
                        <img src="image/usericon.png" class="img" />
                    </div>
                    <div class="mb-2">
                        <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="name is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="please enter only name" ForeColor="blue" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>



                    </div>
                    <div class="mb-2">
                       <%-- <img src="image/user%20(1).png" />--%>
                        <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email" TextMode="Email" AutoCompleteType="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="email is  empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Invaild email" ForeColor="blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>


                    </div>
                    <div class="mb-2">
                        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="password is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="txtpass" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </div>
                    <div class="mb-2">
                        <asp:TextBox ID="txtmob" runat="server" class="form-control" placeholder="Number" MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmob" ErrorMessage="mobile no. is empty" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Invaild  mobile  no." ForeColor="blue" ValidationExpression="^[7-9][0-9]{9}$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                    </div>
                    <div class="mb-2">
                        <asp:RadioButtonList ID="RadioButtonList1" class="form-control" runat="server" AppendDataBoundItems="True" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="select gender" ForeColor="blue" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-2">
                        <asp:Button ID="Button2" class="form-control" runat="server" Text="Register" OnClick="Button2_Click" />

                    </div>


                </form>
            </div>
        </div>

    </div>


    <%-- <h1 align="center" style="background-color: #999999">Registration Form</h1>--%>
    <%-- <table align="center"style="border-style: solid">
            <panel>
                <h1 align="center"  style="border-style: solid" style="background-color: #FFFFFF" >Registration </h1>
            </panel>
            
           
            <tr style="background-color: #FFFFFF"  >
                <td class="auto-style27" style="border-style: solid; border-color: #000000; background-color: #FFFFFF">Name</td>
                <td class="auto-style26"><strong> 
                    <asp:TextBox ID="txtname" runat="server" BorderColor="Black" BorderStyle="Solid" MaxLength="20"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="name is empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="please enter only name" ForeColor="#009999" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="background-color: #FFFFFF" >
                
                <td class="auto-style28" style="border-style: solid; border-color: #000000; background-color: #FFFFFF" >Email</td>
                <td class="auto-style9"><strong>
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" BorderColor="Black" BorderStyle="Solid" AutoCompleteType="Email"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="email is  empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invaild email" ForeColor="#009999" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="background-color: #FFFFFF" >
               
                <td class="auto-style28" style="border-style: solid; border-color: #000000; background-color: #FFFFFF" >Password</td>
                <td class="auto-style9"><strong>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                    </strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" validationexpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="txtpass" ErrorMessage="Password must be 8-10 char long with at least one numeric character and one special char." ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="background-color: #FFFFFF" >
            
                <td class="auto-style29" style="border-style: solid; border-color: #000000; background-color: #FFFFFF" >Mobile</td>
                <td class="auto-style23"><strong>
                    <asp:TextBox ID="txtmob" runat="server" TextMode="Number" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmob" ErrorMessage="mobile is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Invaild  mobile" ForeColor="#009999" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="background-color: #FFFFFF" >
                
                <td class="auto-style30" style="border-style: solid; border-color: #000000; background-color: #FFFFFF" >Gender</td>
                <td class="auto-style20" style="background-color: #FFFFFF">
                    <div class="auto-style37">
                    <asp:RadioButtonList align="left" ID="RadioButtonList1" runat="server" Width="111px" BorderColor="Black" BorderStyle="Solid" AppendDataBoundItems="True">
                        <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Ohers</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="select gender" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                   
                </td>
            </tr>
           
            <tr style="background-color: #FFFFFF" >
                
                <td class="auto-style32"style="border-style: solid">
        <asp:Button ID="Button2"  runat="server" Text="Register" Height="24px" Width="66px" OnClick="Button2_Click" CssClass="auto-style35" BorderColor="Black" BorderStyle="Solid" />
                </td>
                
            </tr>

        </table>--%>
</body>
</html>
