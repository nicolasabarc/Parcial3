using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CRUDMercancias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string id;
        DataTable dt = new DataTable();

        id = txtId.Text;

        dt = MercaderiaDAO.Buscar(id);


        if (dt != null)
        {
            txtDescripcion.Text = dt.Rows[0][1].ToString();
            txtPrecio.Text = dt.Rows[0][2].ToString();
            txtUnidades.Text = dt.Rows[0][3].ToString();
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        string descripcion;
        int idmercaderia, precio, unidades;
        bool estado;

        idmercaderia = Int32.Parse(txtId.Text);
        descripcion = txtDescripcion.Text;
        precio = Int32.Parse(txtPrecio.Text);
        unidades = Int32.Parse(txtUnidades.Text);

        estado = MercaderiaDAO.Agregar(idmercaderia,descripcion,precio,unidades);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Agregado";

        gvMercaderias.DataBind();

        Limpiar();
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        string descripcion;
        int idmercaderia, precio, unidades;
        bool estado;

        idmercaderia = Int32.Parse(txtId.Text);
        descripcion = txtDescripcion.Text;
        precio = Int32.Parse(txtPrecio.Text);
        unidades = Int32.Parse(txtUnidades.Text);

        estado = MercaderiaDAO.Modificar(idmercaderia, descripcion, precio, unidades);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Agregado";

        gvMercaderias.DataBind();

        Limpiar();
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        string id;
        bool estado;

        id = txtId.Text;

        estado = MercaderiaDAO.Eliminar(id);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Eliminado";

        gvMercaderias.DataBind();

        Limpiar();
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