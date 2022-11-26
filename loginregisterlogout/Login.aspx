<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="loginregisterlogout.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Login Page </h1>
        <asp:Label ID="errorMSG" runat="server" Text=""></asp:Label>
        <div>
            
            <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email address"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Your Password" TextMode="Password" ></asp:TextBox><br />
            <br />
            <asp:Button ID="lgnBtn" runat="server" Text="Submit" OnClick="lgnBtn_Click" />

        </div>
    </form>
</body>
</html>
