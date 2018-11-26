using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de FacturaDAO
/// </summary>
public class FacturaDAO
{

    public static bool Agregar(int idfactura,string rutcliente,string fechaemision,int totalfactura)
    {
        bool estado = false;

        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "INSERT INTO facturas VALUES('" + idfactura
                                                     + "' , '" + rutcliente
                                                     + "' , '" + fechaemision
                                                     + "', '" + totalfactura + "')";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        estado = (dt.Rows.Count == 1);

        return estado;
    }

    public static DataTable BuscarFacturaID(int id)
    {
        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM facturas WHERE idfactura = '" + id + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return dt;
    }

    public static DataTable BuscarFacturaFecha(string fecha)
    {
        Conexion c = new Conexion();
        string sCnn = c.Conectar();

        string sSel = "SELECT * FROM facturas WHERE fechaemision = '" + fecha + "'";

        SqlDataAdapter da;
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(sSel, sCnn);

        da.Fill(dt);

        return dt;
    }

}