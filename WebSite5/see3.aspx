<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="see3.aspx.cs" Inherits="see3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Cliente :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Ejecutivo :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Sucursal :<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Cantidad De Targetas :<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Transacciones Targeta #:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="#66FF66">
        <Columns>
            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
        </Columns>
    </asp:GridView>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
        SelectCommand="SELECT [tipo], [fecha], [monto], [saldo] FROM [transaccion] WHERE ([numerotargeta] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="numerotargeta" SessionField="numtargeta" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Nueva Consulta" />
    </p>
</asp:Content>

