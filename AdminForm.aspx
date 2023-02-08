<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminForm.aspx.cs" Inherits="ResitrationForm.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #999999;
        }

        .auto-style4 {
            width: 1363px;
            height: 505px;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            text-align: left;
        }

        /* .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }

            .pagination a.active {
                background-color: dodgerblue;
                color: white;
            }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h1 class="auto-style1">HOME PAGE</h1>
            <p class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
               
                <asp:Button ID="Button1" runat="server" CommandName="Delete" OnClick="Button1_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" CommandName="logout" OnClick="Button2_Click" Text="Logout" />


            </p>


            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="245px" Width="98%" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnSelectedIndexChanged="chkhead_CheckedChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemStyle HorizontalAlign="Center" />
                        <EditItemTemplate>
                            <asp:Label ID="Label4" runat="server"
                                Text='<%# Eval("id") %>'>></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server"
                                Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemStyle HorizontalAlign="Center" />
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"
                                Text='<%# Eval("name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="name is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter only name" ForeColor="blue" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server"
                                Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email">

                        <ItemStyle HorizontalAlign="Center" />
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server"
                                Text='<%# Eval("email") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server"
                                Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Mobile">
                        <ItemStyle HorizontalAlign="Center" />
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"
                                Text='<%# Eval("mob") %>' MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="mobile no. is empty" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invaild  mobile  no." ForeColor="blue" ValidationExpression="^[7-9][0-9]{9}$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label" runat="server"
                                Text='<%# Eval("mob") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GENDER">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server"
                                Text='<%# Eval("gender") %>'>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server"
                                Text='<%# Eval("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="USER TYPE">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server"
                                Text='<%# Eval("usertype") %>'>
                                <asp:ListItem>User</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("usertype") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Photos">
                        <EditItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="80px" Width="100px" />
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="80px" Width="100px" />
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="chkhead" runat="server" AutoPostBack="true" Text="Select All" OnCheckedChanged="chkhead_CheckedChanged" />
                        </HeaderTemplate>

                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">

                        <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Edit" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Update" CommandName="Update" />
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="Cancel" CommandName="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>


            <%--  <p>Responsive pagination with hover effects:</p>

            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#">1</a>
                <a class="active" href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">&raquo;</a>
            </div>
            </p>--%>
            <%-- <p class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
               
                <asp:Button ID="Button1" runat="server" CommandName="Delete" OnClick="Button1_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" CommandName="logout" OnClick="Button2_Click" Text="Logout" />


            </p>

            <div class="auto-style7">
               <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="245px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="93%" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />   <Columns>

                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="NAME">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TxtName" runat="server" Text='<%# Eval("name") %>'></asp:TextBox> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtName" ErrorMessage="Enter Name" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV4" runat="server" ControlToValidate="TxtName" ErrorMessage="Enter Name in corect format" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$"></asp:RegularExpressionValidator>
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  


                        <asp:TemplateField HeaderText="EMAIL">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TxtEmail" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                         

                         <asp:TemplateField HeaderText="MOBILE">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TxtMob" runat="server" MaxLength="10" Text='<%# Eval("mob") %>'></asp:TextBox>  
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtMob" Display="Dynamic" ErrorMessage="Enter correct mobile number" ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("mob") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                         <asp:TemplateField HeaderText="GENDER">  
                             <EditItemTemplate>
                                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" Text='<%# Eval("gender") %>'>
                                     <asp:ListItem>Male</asp:ListItem>
                                     <asp:ListItem>Female</asp:ListItem>
                                     <asp:ListItem>Others</asp:ListItem>
                                 </asp:RadioButtonList>
                             </EditItemTemplate>
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("gender") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                         <asp:TemplateField HeaderText="USER TYPE">  
                             <EditItemTemplate>
                                 <asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Eval("usertype") %>'>
                                     <asp:ListItem>USER</asp:ListItem>
                                     <asp:ListItem>ADMIN</asp:ListItem>
                                 </asp:DropDownList>
                             </EditItemTemplate>
                            <ItemTemplate>  
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("usertype") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                         <asp:TemplateField HeaderText="Photos">  
                             <EditItemTemplate>
                                 <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="80px" Width="100px"/>
                                 <br />
                                 <asp:FileUpload ID="FileUpload1" runat="server" />
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'  Height="80px" Width="100px"/>
                             </ItemTemplate>
                        </asp:TemplateField> 
                        
                        
                        
                       
                        
                        
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        
                        
                        
                       
                         <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        
                        <asp:TemplateField>
                            <HeaderTemplate>
                              <%--  <asp:CheckBox ID="chkhead" runat="server" AutoPostBack="true" Text="Select All" OnCheckedChanged="Chkheader_CheckedChanged" />--%>

            <%--                            </HeaderTemplate>
                           
                                <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server"  />
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
                </asp:GridView>--%>

            <%-- <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="245px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
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
                </asp:GridView>--%>

            <br />

        </div>


    </form>
</body>
</html>
