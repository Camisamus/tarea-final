using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Contenido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("k",null);
        Session.Add("p",null);
        Session.Add("d",null);
        Session.Clear();
        Response.Redirect("Login.aspx");
            
    }
}