<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCar.aspx.cs" Inherits="EditCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 290px;
            width: 1233px;
        }
    </style>
</head>
<body style="height: 238px; width: 1233px">
    <form id="form1" runat="server">
        <p>
            Please Enter Car Information.</p>
        <p>
            <asp:Label ID="lblCID" runat="server" Text="Car ID"></asp:Label>
            :&nbsp;&nbsp;
            <asp:TextBox ID="tbCID" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label1" runat="server" Text="Make:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbMake" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbModel" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="MPGC:"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="tbMPGC" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="MPGH:"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="tbMPGH" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" BackColor="#00CC00" BorderColor="Black" OnClick="btnSave_Click" Text="Save " Width="65px" />
&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
