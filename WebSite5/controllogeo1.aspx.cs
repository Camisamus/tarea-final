using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controllogeo1 : System.Web.UI.Page
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
        Response.Redirect("http://localhost:49164/Cliente/Create");
    }
}