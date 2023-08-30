<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiniStatement.aspx.cs" Inherits="AtmApplication.MiniStatement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 10px;
    width:25%;
    height:500px;
    margin:auto;
    margin-top:30px;
     margin-left:650px;


    background-image:url('Images/AtmImage.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;

}
         #GridView1
         {
             margin-right:50px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
         <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" forecolor="red" NavigateUrl="~/Login.aspx">Back To Login..!!</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server" forecolor="Green" NavigateUrl="~/Home.aspx">Back To Home..!!</asp:HyperLink>

                <br />
    </form>
</body>
</html>
