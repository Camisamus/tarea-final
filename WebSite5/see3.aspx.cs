using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class see3 : System.Web.UI.Page
{
    public SqlConnection sqlConnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["cliente"].ToString();
        //Label2.Text = Session[""].ToString();
        //Label3.Text = Session[""].ToString();
        Label4.Text = Session["cantidadtageta"].ToString();
        Label5.Text = Session["numtargeta"].ToString();

        //-----------------------------crear coneccion
        string sqlstring = "Data Source=H-PC\\SQLEXPRESS;Integrated Security=SSPI;Initial Catalog=banco;Integrated Security=True";
        sqlConnection = new SqlConnection(sqlstring);
        Application["sqlConnection"] = sqlConnection;
        if (sqlConnection.State == ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        //-----------------------------llenar  ejecutivo
        string cmdString = "select top 1 ejecutivo FROM transaccion ";
        cmdString += "WHERE ( numerotargeta = @word)";

        SqlCommand sqlCommand = new SqlCommand();
        SqlDataReader sqlReader;

        sqlCommand.Connection = sqlConnection;
        sqlCommand.CommandType = CommandType.Text;
        sqlCommand.CommandText = cmdString;
        sqlCommand.Parameters.Add("@word", SqlDbType.Char).Value = Session["numtargeta"];
        sqlReader = sqlCommand.ExecuteReader();
        String ejecutivoid = "";
        while (sqlReader.Read())
        {
            ejecutivoid += sqlReader["ejecutivo"];
        }

        sqlReader.Close();
        cmdString = "select * FROM ejecutivo ";
        cmdString += "WHERE ( id_ejecutivo = @word2)";

        SqlDataReader sqlReader2;

        sqlCommand.Connection = sqlConnection;
        sqlCommand.CommandType = CommandType.Text;
        sqlCommand.CommandText = cmdString;
        sqlCommand.Parameters.Add("@word2", SqlDbType.Char).Value = ejecutivoid;
        sqlReader2 = sqlCommand.ExecuteReader();
        String ejecutivonombre = "";
        String sucursalid = "";
        while (sqlReader2.Read())
        {
            ejecutivonombre += sqlReader2["nombre"];
            sucursalid += sqlReader2["sucursal"];
        }
        //-----------------------------llenar  sucursal 
        cmdString = "select * FROM sucursal ";
        cmdString += "WHERE ( id_sucursal = @word3)";

        sqlReader2.Close();
        SqlDataReader sqlReader3;

        sqlCommand.Connection = sqlConnection;
        sqlCommand.CommandType = CommandType.Text;
        sqlCommand.CommandText = cmdString;
        sqlCommand.Parameters.Add("@word3", SqlDbType.Char).Value = sucursalid;
        sqlReader3 = sqlCommand.ExecuteReader();
        String sucursalnombre = "";
        while (sqlReader3.Read())
        {
            sucursalnombre += sqlReader3["nombre"];
        }

        sqlReader3.Close();
        sqlConnection.Close();
        Label2.Text = ejecutivonombre;
        Label3.Text = sucursalnombre;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["cliente"] = "";
        Session["cantidadtargeta"] = "";
        Session["numtargeta"] = "";
        //Session[""] = "";
        //Session[""] = "";
        Response.Redirect("see.aspx");
        
    }
}