﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    public SqlConnection sqlConnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count <= 0)
        {
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
        }
        else
        {
            Response.Redirect("Contenido.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string cmdString = "select  * FROM ejecutivo ";
        cmdString += "WHERE (nombre = @name) AND (contrasena = @word)";

        SqlCommand sqlCommand = new SqlCommand();
        SqlDataReader sqlReader;

        sqlCommand.Connection = sqlConnection;
        sqlCommand.CommandType = CommandType.Text;
        sqlCommand.CommandText = cmdString;
        sqlCommand.Parameters.Add("@name", SqlDbType.Char).Value = TextBox1.Text;
        sqlCommand.Parameters.Add("@word", SqlDbType.Char, 8).Value = TextBox2.Text;
        sqlReader = sqlCommand.ExecuteReader();
        String pa = "";
        String pat = "";
        while (sqlReader.Read())
        {

            pa += sqlReader["nombre"];
            pat += sqlReader["contrasena"];
        }
        if (sqlReader.HasRows == true)
        {

            Response.Write("<script>alert('LogIn done')</script>");
            Session.Add("k", TextBox1.Text);
            Session.Add("p", pa);
            Session.Add("d", pat);
            sqlCommand.Dispose();
            sqlReader.Close();
            TextBox2.Text = "";
            Response.Redirect("Contenido.aspx");
        }
        else
        {
            Label1.Visible = true;
            sqlCommand.Dispose();
            sqlReader.Close();
            TextBox2.Text = "";
            Label1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}