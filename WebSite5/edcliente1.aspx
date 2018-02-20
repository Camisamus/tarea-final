<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="edcliente1.aspx.cs" Inherits="edcliente1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    CLIENTE<br />
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="nombre" DataValueField="id_cliente"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bancoConnectionString %>" 
        SelectCommand="SELECT [id_cliente], [nombre] FROM [cliente]">
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="EDITAR" />
</asp:Content>

