<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Contenido.aspx.cs" Inherits="Contenido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Button ID="Button1" runat="server" Text="Cerrar sesion" 
            onclick="Button1_Click" />
    </p>
</asp:Content>

