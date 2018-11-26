using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



public class ClienteDAO
{
    public static bool Agregar(string rut, string nombre, string apellido, string direccion, string fono)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "INSERT INTO clientes VALUES('"+ rut 
                                                     + "' , '" + nombre 
                                                     + "' , '" + apellido 
                                                     + "' , '" + direccion 
                                                     + "', '" + fono +"')";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);      

        return estado;
    }

    public static DataTable Buscar(string rut)
    {
        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM clientes WHERE rut = '"+ rut +"'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return dt;
    }

    public static bool Modificar(string rut, string nombre, string apellido, string direccion, string fono)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "UPDATE clientes SET nombre='"+ nombre 
                                   +"' , apellido='"+ apellido 
                                   +"' , direccion='"+ direccion 
                                   +"' , fono='"+ fono 
                                   +"' WHERE rut='"+ rut + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static bool Eliminar(string rut)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "DELETE FROM clientes WHERE rut = '" + rut + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return estado;
    }

}
