using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDMercancias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {

    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {

    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {

    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        Limpiar();
    }

    public void Limpiar()
    {
        txtId.Text = "";
        txtDescripcion.Text = "";
        txtPrecio.Text = "";
        txtUnidades.Text = "";
    }


}