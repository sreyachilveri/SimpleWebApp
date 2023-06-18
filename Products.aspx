<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SimpleApp.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
         <style type="text/css">
        .auto-style15 {
            text-align: center;
                 font-size: large;
                 font-family: "times New Roman", Times, serif;
             }
             .auto-style16 {
                 text-align: left;
             }
             .auto-style17 {
                 font-size: large;
                 font-family: "times New Roman", Times, serif;
             }
             .auto-style18 {
                 background-color: transparent;
                 font-family: "times New Roman", Times, serif;
             }
             .auto-style19 {
                 font-size: large;
                 font-family: "times New Roman", Times, serif;
                 font-weight: bold;
             }
             .auto-style20 {
                 width: 1241px;
                 height: 257px;
                 margin-left: 0px;
             }
         </style>
    <link href="StyleSheet1.css" rel="stylesheet" />

   
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style16">
            <div class="auto-style16">
           <img alt="" border="0" class="auto-style20" src="images/food.jpg" />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style15" DataKeyNames="pid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False" Width="309px" AutoPostBack="True" BorderStyle="Solid" BorderWidth="5px" BorderColor="Black">
                <Columns>
                    <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            <div class="auto-style16">
            <br class="auto-style17" />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="pid" DataValueField="pid" Width="275px" CssClass="auto-style17" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <div class="auto-style16">
                <br class="auto-style17" />
                <strong>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Show Overview" CssClass="auto-style19" BackColor="#999966" />
                </strong>
            <br class="auto-style17" />
            <br class="auto-style17" />
                <span class="auto-style17"><strong>Product Name :</strong> </span> <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" CssClass="auto-style18"></asp:TextBox>
            <br class="auto-style17" />
&nbsp;<br class="auto-style17" />
                <span class="auto-style17"><strong>Product Price :</strong>&nbsp;
            </span>
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" CssClass="auto-style18"></asp:TextBox>
            <br class="auto-style17" />
            <br class="auto-style17" />
                <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show" Width="70px" Height="30px" CssClass="auto-style19" BackColor="#999966" />
                </strong>
                <span class="auto-style17">&nbsp;&nbsp;&nbsp;
            </span>
                <strong>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" Width="70px" Height="30px" CssClass="auto-style19" BackColor="#999966" />
                </strong>
                <span class="auto-style17">&nbsp;&nbsp;&nbsp;
            </span>
                <strong>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Height="30px" Width="70px" CssClass="auto-style19" BackColor="#999966" />
                </strong>&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="Button5" runat="server" BackColor="#999966" CssClass="auto-style19" Height="30px" OnClick="Button5_Click1" Text="Insert" Width="70px" />
                </strong>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            <br class="auto-style17" />
                <strong>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style17"></asp:Label>
                </strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
