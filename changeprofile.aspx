<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DashBoard.Master" CodeBehind="changeprofile.aspx.cs" Inherits="ResitrationForm.changeprofile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />

        <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            function ShowImagePreview(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                            .width(240)
                            .height(150);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
        <style>
            .card {
                width: 29rem;
                margin-top: 58px;
                margin-left: 354px;
                border-radius: 55px;
                box-shadow: hotpink;
                box-shadow: white;
                box-shadow: 0px 0px 9px;
                overflow: hidden;
            }

            .card-body {
                padding: 30px 42px 72px;
            }
        </style>

        <%--    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"> </script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.file && input.file[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(240)
                        .height(150)

                };
                reader.readAsDataURL(input.file[0]);

            }
        }
    </script>--%>
        <%--  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"> </script>
        <script type="text/javascript">
            function ShowImagePreview(input) {
                if (input.file && input.file[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                            .width(240)
                            .height(150)

                    };
                    reader.readAsDataURL(input.file[0]);

                }
            }
        </script>


    </asp:Content>--%>
        <title></title>
    </head>
    <body>
        <form id="form1">
            <div class="container justify-content-center mt-8">

                <div class="card">
                    <div class="card-body">

                        <div class="mb-4">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="150px" Width="240px" />
                        </div>
                        <div class="mb-4">
                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ShowImagePreview(this);" />
                        </div>
                        <div class="mb-4">
                            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click1" />
                        </div>
                        <div class="mb-4">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>


                        <%-- <table>
                <tr>
                    <td>Upload Your Image
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Text='<%# Eval("image") %>' Height="187px" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click1" />

                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <p>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>--%>
                    </div>
                </div>
            </div>

        </form>
    </body>
    </html>
</asp:Content>

