<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="see.aspx.cs" Inherits="see" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 236px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 148px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td class="style3">
            Cliente<br />
            <br />
&nbsp;<asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="nombre" DataValueField="id_cliente" 
                onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
                SelectCommand="SELECT [id_cliente], [nombre] FROM [cliente]">
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" onclick="ListBox1_SelectedIndexChanged" 
                Text="Buscar" style="height: 26px" />
        </td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <br />
            <br />
            <br />
        </td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

