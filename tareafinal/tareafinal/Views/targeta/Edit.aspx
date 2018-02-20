<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<tareafinal.Models.targeta>" %>

<script runat="server">

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="nombre" DataValueField="id_cliente" 
                onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                    SelectCommand="SELECT [id_cliente], [nombre] FROM [cliente]">
                </asp:SqlDataSource>
            
            
           
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.cliente) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.cliente) %>
                <%: Html.ValidationMessageFor(model => model.cliente) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.vencimiento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.vencimiento) %>
                <%: Html.ValidationMessageFor(model => model.vencimiento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.limite) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.limite) %>
                <%: Html.ValidationMessageFor(model => model.limite) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.estado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.estado) %>
                <%: Html.ValidationMessageFor(model => model.estado) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</form>

</asp:Content>

