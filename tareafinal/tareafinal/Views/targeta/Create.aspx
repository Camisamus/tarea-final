<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<tareafinal.Models.targeta>" %>

<script runat="server">

    
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
            <legend>crear targeta nueva</legend>
            
            &nbsp;<div class="editor-label">
                <%: Html.LabelFor(model => model.limite) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.limite) %>
                <%: Html.ValidationMessageFor(model => model.limite) %>
            </div>
                <%  //Model.cliente = Convert.ToInt32(Session["n"]); %>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <input type="submit" value="Crear"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Cancelar"
                        NavigateUrl="http://localhost:49176/WebSite5/Inicio.aspx">Cancelar</asp:HyperLink>
            </p>
        </fieldset>

    <% } %>


    </form>


</asp:Content>

