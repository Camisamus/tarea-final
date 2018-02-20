<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="addtargeta.aspx.cs" Inherits="addtargeta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Seleccione dueño de la nueva targeta</p>
    <form name="cliente" method="get" action="http://localhost:49164/targeta/Create">
    
<p>
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="nombre" DataValueField="id_cliente"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" 
        SelectCommand="SELECT [id_cliente], [nombre] FROM [cliente]">
    </asp:SqlDataSource>
</p>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
    Text="Siguiente" />
<br />
        &nbsp;
    </form>
</asp:Content>

