using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.Count >=1){
            try
            {
            String k = Session["k"].ToString();
            Session.Clear();
            Session.Add("k",k);
            }catch(Exception){}
        }else{}
    }
}