using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addtargeta : System.Web.UI.Page
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
        //Session.Add("nomclienwevatar", ListBox1.SelectedItem);
        int n =Convert.ToInt32(ListBox1.SelectedValue);
        Session.Add("n", n);
        Response.Redirect("http://localhost:49164/targeta/Create" + "?Accion=" + n);
    }
}