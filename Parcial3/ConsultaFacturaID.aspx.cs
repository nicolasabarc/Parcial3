using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConsultaFacturaID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
    }

    protected void btnConsultar_Click(object sender, EventArgs e)
    {
        int folio;
        DataTable dt = new DataTable();

        folio = Int32.Parse(txtId.Text);

        dt = FacturaDAO.BuscarFacturaID(folio);

        gvFacturas.DataSource = dt;
        gvFacturas.DataBind();


        
    }
}