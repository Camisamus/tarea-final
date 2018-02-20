<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edcliente2.aspx.cs" Inherits="edcliente2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#c1ff66">
    <form id="form1" runat="server">
    <div>
    
        Edicion De Cliente<br />
&nbsp;<br />
        <br />
        NOMBRE:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        DIRECCION:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        TELEFONO<br />
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="8" 
            ontextchanged="TextBox3_TextChanged" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" 
            Text="Telefono debe ser un numero de maximo 8 cifras" Visible="False"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="ACCEPTAR" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="CANCELAR" />
    
    </div>
    </form>
</body>
</html>
