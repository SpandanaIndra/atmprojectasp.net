<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AtmApplication.Login" %>

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
    margin-top:50px;
     margin-left:650px;


    background-image:url('Images/AtmImage.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;

}

       
.login-container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #ffffff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
#btnLogin{
    margin:auto auto auto 6px;
        }

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
#btnLogin:hover{
    border:2px solid green;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
.hyper:hover{
   font-size:larger; 
   color:red;
     
}
#hlForgotPwd{
    margin-left:90px;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div1">
            <h2>Login</h2>
            <div>
                <label for="txtUsername">Account Number:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                <br />
            </div>
            <div>
                <label for="txtPassword">Pin Number:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
                <br />
            </div>
            <div>
                <br />
&nbsp;
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" OnClientClick="return confirm('Please click OK to Login')" />
                <br />
                <br />
                <br />
                <asp:HyperLink CssClass="hyper" ID="hlForgotPwd" runat="server" NavigateUrl="ForgotPin.aspx">Forgot Pin Number</asp:HyperLink>
                <br />
                <br />
                <br />
                Are you new..??<asp:HyperLink CssClass="hyper" ID="HyperLink1" runat="server" ForeColor="blue" NavigateUrl="SignUp.aspx">Please SignUp</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
