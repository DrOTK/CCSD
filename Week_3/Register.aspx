<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 397px; width: 1255px">
    <form id="form1" runat="server">
    <div style="height: 322px; width: 1258px">
    
        <asp:Label ID="Lbl_EnterStu" runat="server" Text="Please enter new car"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblFname" runat="server" Text="Make"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbMake" runat="server"></asp:TextBox>
        <br />
    
        <br />
        <asp:Label ID="lblLName" runat="server" Text="Model"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbModel" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMpgc" runat="server" Text="MPGC"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbMpgc" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMpgh" runat="server" Text="MPGH"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbMgph" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" BackColor="Lime" BorderColor="Black" Font-Bold="True" OnClick="btnRegister_Click" Text="Register New Car" />
    
    </div>
    </form>
</body>
</html>
