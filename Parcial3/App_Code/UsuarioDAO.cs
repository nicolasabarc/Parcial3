using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class UsuarioDAO
{
    public string Login(string usuario, string clave)
    {
        string username = "";

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM Usuarios " + " WHERE username= '" + usuario + "' AND " +
                      "password='" + clave + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            username = usuario;
        }

        return username;
    }

    public static bool Agregar(string username, string nombre, string clave)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "INSERT INTO usuarios VALUES('" + username
                                                     + "' , '" + nombre                                                    
                                                     + "', '" + clave + "')";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static DataTable Buscar(string username)
    {
        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM usuarios WHERE username = '" + username + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return dt;
    }

    public static bool Modificar(string username, string nombre, string clave)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "UPDATE usuarios SET nombre='" + nombre
                                   + "' , clave='" + clave                              
                                   + "' WHERE username='" + username + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static bool Eliminar(string username)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "DELETE FROM usuarios WHERE username = '" + username + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return estado;
    }
}