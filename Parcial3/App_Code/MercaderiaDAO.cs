using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class MercaderiaDAO
{
    public static bool Agregar(int idmercaderia,string descripcion, int precio, int unidades)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "INSERT INTO mercaderias VALUES('" + idmercaderia
                                                     + "' , '" + descripcion
                                                     + "' , '" + precio                                        
                                                     + "', '" + unidades + "')";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static DataTable Buscar(string id)
    {
        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM mercaderias WHERE idmercaderia = '" + id + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return dt;
    }

    public static bool Modificar(int idmercaderia, string descripcion, int precio, int unidades)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "UPDATE mercaderias SET descripcion='" + descripcion
                                   + "' , precio='" + precio
                                   + "' , unidades='" + unidades
                                   + "' WHERE idmercaderia='" + idmercaderia + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static bool Eliminar(string id)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "DELETE FROM mercaderias WHERE idmercaderia = '" + id + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return estado;
    }
}