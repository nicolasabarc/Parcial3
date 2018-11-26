using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsultaFacturaFecha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
        lblError.Visible = false;
    }

    protected void btnConsultar_Click(object sender, EventArgs e)
    {
        string fecha;
        DataTable dt = new DataTable();
        DateTime fechaSQL = new DateTime();

        fechaSQL = DateTime.Parse(txtFecha.Text);

        fecha = fechaSQL.ToShortDateString();

        dt = FacturaDAO.BuscarFacturaFecha(fecha);

        lblError.Visible = (dt.Rows.Count > 0) ? false : true;

        gvFacturas.DataSource = dt;
        gvFacturas.DataBind();
     
       

    }
}