<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DashBoard.Master" CodeBehind="changedetails.aspx.cs" Inherits="ResitrationForm.changedetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head >
        <title></title>
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
                            <h2 style="margin-top: -70px; margin-left: 75px;">Change Details</h2>

                        </div>
                        <div>
                            Name
                        </div>
                        <div <%--class="mb-1"--%>>

                            <asp:TextBox ID="name" runat="server" class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="name is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="name" ErrorMessage="please enter only name" ForeColor="blue" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                        </div>
                        <div>
                            Email
                        </div>
                        <div <%--class="mb-1"--%>>
                            <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="email is  empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="email" ErrorMessage="Invaild email" ForeColor="blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>
                        <div>
                            Mobile No.
                        </div>
                        <div <%--class="mb-1"--%>>
                            <asp:TextBox ID="mobile" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="please enter mobile no." ControlToValidate="mobile" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Invaild  mobile  no." ForeColor="blue" ValidationExpression="^[7-9][0-9]{9}$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                            </div>
                        <div>
                            Gender
                        </div>

                        <div <%--class="mb-1"--%>>
                            <asp:RadioButtonList ID="RR1" runat="server" class="form-control" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="please select gender" ControlToValidate="RR1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            <%-- <asp:RadioButtonList ID="RadioButtonList1" class="form-control" runat="server" AppendDataBoundItems="True" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="select gender" ForeColor="blue" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            --%>
                        </div>

                        <div class="mb-1">
                            <asp:Button ID="Button1" runat="server" class="form-control" Text="Update" OnClick="Button1_Click" />

                        </div>


                    </form>
                </div>
            </div>

        </div>

        <%--  <form id="form1" runat="server">
        <div>
             <table>

                <tr>
                    <td>Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please  enter name" ControlToValidate="name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter email" ControlToValidate="email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="please enter mobile no." ControlToValidate="mobile" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td class="auto-style1"> 
                        <asp:RadioButtonList ID="RR1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="please select gender" ControlToValidate="RR1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>--%>
    </body>
    </html>
</asp:Content>
