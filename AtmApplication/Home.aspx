<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AtmApplication.Home" %>

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
            width: 25%;
            height: 500px;
            margin: auto;
            margin-top: 30px;
            margin-left: 650px;
            background-image: url('Images/AtmImage.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        

        }
         .btn{
             background-color:blue;
             text-align:center;
             padding:20px;
             width:85%;
             border:1px solid red;
             border-radius:0px 60px;
             box-shadow:0px 0px 15px black;
             margin:5px;
         }
         .btn:hover{
             background-color:green;
              border:1.5px solid red;
              width:90%;

         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
                <br />
                <asp:Button class="btn" ID="btnCredit" runat="server" Text="Credit" OnClick="btnCredit_Click" />
                <br />
              </div>
        
        
              <div>
                <br />
                <asp:Button class="btn" ID="btnDebit" runat="server" Text="Debit" OnClick="btnDebit_Click" />
                <br />
              </div>
        <div>
                <br />
                <asp:Button class="btn" ID="btnMiniStmt" runat="server" Text="Mini Statement" OnClick="btnMiniStmt_Click" />
                <br />
              </div>
        <div>
                <br />
                <asp:Button class="btn" ID="btnChangePin" runat="server" Text="Change Pin Number" OnClick="btnChangePin_Click" />
                <br />
              </div>
        <div>
                <br />
                <asp:Button class="btn" ID="btnLogOut" runat="server" Text="LogOut" OnClick="btnLogOut_Click" />
                <br />
              </div>
    </form>
</body>
</html>
