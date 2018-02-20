<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<tareafinal.Models.ejecutivo>" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Registro</legend>
            &nbsp;<div class="editor-label">
                <%: Html.LabelFor(model => model.sucursal) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.sucursal) %>
                <%: Html.ValidationMessageFor(model => model.sucursal) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
                        
            <div class="editor-label">
                <%: Html.LabelFor(model => model.contrasena) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(model => model.contrasena)%>
                <%: Html.ValidationMessageFor(model => model.contrasena) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.rut) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.rut) %>
                <%: Html.ValidationMessageFor(model => model.rut) %>
            </div>
            
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <input type="submit" value="Registrarse"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Cancelar"
                        NavigateUrl="http://localhost:49176/WebSite5/Inicio.aspx">Cancelar</asp:HyperLink>
            </p>
        </fieldset>

    <% } %>


    </form>


</asp:Content>

