<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPin.aspx.cs" Inherits="AtmApplication.ForgotPin" %>

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
        #btnLogin:hover {
            border:2px solid green;
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
input[type="number"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
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

#HyperLink1:hover{
    font-size:x-large;
    color:blue;
}
#HyperLink1{
     color:red;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h2>Creating New Pin Form</h2>
            <div>
                <label for="txtUsername">Enter Full Name:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                <br />
            </div>
            <div>
                <label for="txtPhne">Account Number:</label>
                <asp:TextBox ID="txtAccountNum" runat="server" ></asp:TextBox><br />
                <br />
            </div>
             <div>
                <label for="txtMinbal">Enter New Pin Number:</label>
                <asp:TextBox ID="txtPinNum" runat="server" ></asp:TextBox><br />
                <br />
            </div>
            <div>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Create New Pin" OnClick="btnLogin_Click" />
                <br />
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Back To Login..!!</asp:HyperLink>
                <br />
                <br />
                <br />
               
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
            </div>
        </div>
    </form>
</body>
</html>
