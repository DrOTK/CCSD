<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="BorderStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Add a new car...<br />
    
        <asp:Button ID="BtnAddCar" runat="server" OnClick="BtnAddStudent_Click" Text="Add New Car" />
    
        <br />
        <asp:Button ID="btnEditCar" runat="server" OnClick="btnEditCar_Click" Text="Edit Registry" />
    
    </div>
    </form>
</body>
</html>
