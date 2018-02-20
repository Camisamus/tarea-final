using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class see2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("numtargeta", ListBox1.SelectedValue);
        int k = ListBox1.Items.Count;
        Session.Add("cantidadtageta", k);
        Response.Redirect("see3.aspx");
    }
}