<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="see2.aspx.cs" Inherits="see2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Targeta:</p>
<p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="id_targeta" DataValueField="id_targeta"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT [id_targeta] FROM [targeta] WHERE ([cliente] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="cliente" SessionField="clienteid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
<p>
        <asp:Button ID="Button1" runat="server" Text="Consultar" 
            onclick="Button1_Click" />
</p>
</asp:Content>

