using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class edcliente2 : System.Web.UI.Page
{
    public SqlConnection sqlConnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        //abrir coneccion
        string sqlstring = "Data Source=H-PC\\SQLEXPRESS;Integrated Security=SSPI;Initial Catalog=banco;Integrated Security=True";
        sqlConnection = new SqlConnection(sqlstring);
        Application["sqlConnection"] = sqlConnection;
        if (sqlConnection.State == ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        if (sqlConnection.State != ConnectionState.Open)
        {
            Response.Write("<script>alert('database connection failed')</script>");
        }
        //consultar valores
        string cmdString = "SELECT TOP 1 * FROM cliente ";
        cmdString += "WHERE  (id_cliente = @word)";

        SqlCommand sqlCommand = new SqlCommand();
        SqlDataReader sqlReader;

        sqlCommand.Connection = sqlConnection;
        sqlCommand.CommandType = CommandType.Text;
        sqlCommand.CommandText = cmdString;
        sqlCommand.Parameters.Add("@word", SqlDbType.Char, 8).Value = Session["idce"].ToString();
        sqlReader = sqlCommand.ExecuteReader();
        //llenar los campos
        while (sqlReader.Read())
        {

            TextBox1.Text += sqlReader["nombre"];
            TextBox2.Text += sqlReader["direccion"];
            TextBox3.Text += sqlReader["telefono"];
        }
        sqlReader.Close();

        //
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inicio.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string cmdString2 = "UPDATE CLIENTE ";
        cmdString2 += "SET nombre = @nombre , direccion = @direccion , telefono= @telefono WHERE  (id_cliente = @word)";

        SqlCommand sqlCommand2 = new SqlCommand();
        SqlDataReader sqlReader2;

        sqlCommand2.Connection = sqlConnection;
        sqlCommand2.CommandType = CommandType.Text;
        sqlCommand2.CommandText = cmdString2;
        sqlCommand2.Parameters.Add("@word", SqlDbType.Char, 8).Value = Session["idce"].ToString();
        sqlCommand2.Parameters.Add("@nombre", SqlDbType.Char, 8).Value = TextBox1.Text;
        sqlCommand2.Parameters.Add("@direccion", SqlDbType.Char, 8).Value = TextBox2.Text;
        sqlCommand2.Parameters.Add("@telefono", SqlDbType.Char, 8).Value = TextBox3.Text;
        sqlReader2 = sqlCommand2.ExecuteReader();
        Response.Write("<script>alert('Cliente Modificado')</script>");
        Response.Redirect("cm.aspx");
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        try { Convert.ToInt32(TextBox3.Text); }
        catch { TextBox3.Text = "0"; }
    }
}