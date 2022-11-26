<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="loginregisterlogout.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Register Page </h1>
        <div>
            <asp:Label ID="Label" runat="server" Text="UserID"></asp:Label>
            <asp:TextBox ID="userid" runat="server" placeholder="Enter Your User ID"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="firstname" runat="server" placeholder="Enter Your First Name"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="lastname" runat="server" placeholder="Enter Your Last Name"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="city" runat="server" placeholder="Enter Your City"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
            <asp:TextBox ID="contactno" runat="server" placeholder="Enter Your Contact number"></asp:TextBox><br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email address"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Your Password" TextMode="Password" ></asp:TextBox><br />
            <br />
            <asp:Button ID="regBtn" runat="server" Text="Submit" OnClick="regBtn_Click" />
            <asp:Button ID="reset" runat="server" Text="Reset"/>
        </div>
    </form>
</body>
</html>
