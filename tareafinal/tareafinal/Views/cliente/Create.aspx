<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<tareafinal.Models.cliente>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Crear
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Cliente</legend>
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.direccion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.direccion) %>
                <%: Html.ValidationMessageFor(model => model.direccion) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.telefono) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.telefono) %>
                <%: Html.ValidationMessageFor(model => model.telefono) %>
            </div>
            
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;<input type="submit" value="Crear" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Cancelar"
                        NavigateUrl="http://localhost:49176/WebSite5/Inicio.aspx">Cancelar</asp:HyperLink>
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

