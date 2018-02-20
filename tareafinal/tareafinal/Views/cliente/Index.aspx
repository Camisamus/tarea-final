<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<tareafinal.Models.cliente>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <form id="form1" runat="server">
    El nuevo cliente se ha inscrito correctamente<br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="http://localhost:49176/WebSite5/Inicio.aspx">volver</asp:HyperLink>
   
    </form>

</asp:Content>

