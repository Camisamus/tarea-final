using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edcliente1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session.Count >= 1)
        {

        }
        else { Response.Redirect("Default.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("idce", ListBox1.SelectedValue);
        Response.Redirect("edcliente2.aspx");
    }
}