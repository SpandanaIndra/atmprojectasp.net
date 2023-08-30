<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Debit.aspx.cs" Inherits="AtmApplication.Debit" %>

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
.txt{
    width:100%;
    height:40px;
    border:none;
    border-radius:3px;
}
#HyperLink1:hover{
     font-size:x-large;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h3><b>WelCome To Any Time Money</b></h3>
               <p>&nbsp;</p>
               <p>&nbsp;</p>
            <div>
                <label for="txtUsername">Account Number:</label>
                <asp:TextBox CssClass="txt" ID="txtAccNum" runat="server" ReadOnly="True"></asp:TextBox><br />
                <br />
            </div>
           
             <div>
                <label for="txtMinbal">Amount:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="txt" ID="txtAmount" runat="server"></asp:TextBox><br />
                <br />
            </div>
            <div>
                <br />
                <asp:Button ID="btnCredit" runat="server" type="submit" Text="Debit" OnClick="btnCredit_Click" />
                <br />
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" forecolor="red" NavigateUrl="~/Login.aspx">Back To Login..!!</asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink2" runat="server" forecolor="Green" NavigateUrl="~/Home.aspx">Back To Home..!!</asp:HyperLink>

                <br />
                <br />
                <br />
               
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
            </div>
        </div>
    </form>
</body>
</html>
