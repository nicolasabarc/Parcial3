using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUDClientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        string rut, nombre, apellido, direccion, fono;
        bool estado;

        rut = txtRut.Text;
        nombre = txtNombre.Text;
        apellido = txtApellido.Text;
        direccion = txtDireccion.Text;
        fono = txtFono.Text;

        estado = ClienteDAO.Agregar(rut, nombre, apellido, direccion, fono);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Agregado" ;

        gvClientes.DataBind();

        Limpiar();

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string rut;
        DataTable dt = new DataTable();

        rut = txtRut.Text;

        dt = ClienteDAO.Buscar(rut);
           

        if (dt != null)
        {
            txtNombre.Text = dt.Rows[0][1].ToString();
            txtApellido.Text = dt.Rows[0][2].ToString();
            txtDireccion.Text = dt.Rows[0][3].ToString();
            txtFono.Text = dt.Rows[0][4].ToString();
        }
    }

   

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        string rut, nombre, apellido, direccion, fono;
        bool estado;

        rut = txtRut.Text;
        nombre = txtNombre.Text;
        apellido = txtApellido.Text;
        direccion = txtDireccion.Text;
        fono = txtFono.Text;

        estado = ClienteDAO.Modificar(rut, nombre, apellido, direccion, fono);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Modificado";

        gvClientes.DataBind();

        Limpiar();

    }
 

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        string rut;
        bool estado;

        rut = txtRut.Text;       

        estado = ClienteDAO.Eliminar(rut);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Eliminado";

        gvClientes.DataBind();

        Limpiar();

    }

   
    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        Limpiar();
    }

    public void Limpiar()
    {
        txtRut.Text = "";
        txtNombre.Text = "";
        txtApellido.Text = "";
        txtDireccion.Text = "";
        txtFono.Text = "";
    }

}