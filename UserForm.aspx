<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DashBoard.Master" CodeBehind="UserForm.aspx.cs" Inherits="ResitrationForm.WebForm4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html>
    <head>
        <title></title>
        <style type="text/css">
            .auto-style1 {
                margin-top: 27px;
                color: #0000FF;
                background-color: #999999;
                margin-right: 26px;
            }

            </style>
    </head>
    <body>
        <form id="form1">
            <div>
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="245px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemStyle HorizontalAlign="Center" />
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"
                                    Text='<%# Bind("id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                            <ItemStyle HorizontalAlign="Center" />
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"
                                    Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">

                            <ItemStyle HorizontalAlign="Center" />
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"
                                    Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mobile">
                            <ItemStyle HorizontalAlign="Center" />
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"
                                    Text='<%# Bind("mob") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Bind("mob") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="UserType">
                            <ItemStyle HorizontalAlign="Center" />
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"
                                    Text='<%# Bind("usertype") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Bind("usertype") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White"  HorizontalAlign="Center" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

            </div>

        </form>
    </body>
    </html>
</asp:Content>
