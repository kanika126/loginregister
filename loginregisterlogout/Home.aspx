<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="loginregisterlogout.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">  Home
                </asp:HyperLink>  &nbsp;  &nbsp; 
                <asp:PlaceHolder ID="loginPlaceHolder" runat="server">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx"> Login 
                    </asp:HyperLink> &nbsp;  &nbsp; 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx"> Register
                    </asp:HyperLink>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="logoutPlaceHolder" runat="server" Visible="false">
                    Welcome <%=HttpContext.Current.Session["first_name"] %>, 
                    <asp:HyperLink Id="HyperLink4" runat="server" NavigateUrl="~/Login.aspx"> Logout
                    </asp:HyperLink>
                </asp:PlaceHolder>
            </p>
        </div>
        <div>
            <b> Welcome to login.</b><br />
            <asp:PlaceHolder ID="logoutPlaceHolder2" runat="server" Visible="false">
                 <b> Your Name:</b> <%=HttpContext.Current.Session["first_name"] %>  
                    <%=HttpContext.Current.Session["last_name"] %><br />
                 <b> Your city: </b> <%=HttpContext.Current.Session["city"] %><br />
                 <b> Your contact number: </b> <%=HttpContext.Current.Session["contactno"] %><br />
                 <b> Your email address: </b> <%=HttpContext.Current.Session["email"] %>

            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
