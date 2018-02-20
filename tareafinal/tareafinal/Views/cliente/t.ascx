<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<script runat="server">

    protected void Button1_Load(object sender, EventArgs e)
    {
            Response.Redirect("http://localhost:49176/WebSite5/paginadeerror.aspx");
    }
</script>
<asp:Button ID="Button1" runat="server" onload="Button1_Load" Text="Button" />


