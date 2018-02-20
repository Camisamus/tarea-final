using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class see : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count >= 1)
        {
           
        }
        else { Response.Redirect("Default.aspx"); }
    }


    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session.Add("clienteid", ListBox1.SelectedValue);
        String a = ListBox1.SelectedItem.ToString();
        Session.Add("cliente", a);
       Response.Redirect("see2.aspx");
    }
    
}