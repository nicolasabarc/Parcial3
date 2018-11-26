using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CRUDUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string username;
        DataTable dt = new DataTable();

        username = txtUsername.Text;

        dt = UsuarioDAO.Buscar(username);

        if (dt != null)
        {
            txtNombre.Text = dt.Rows[0][1].ToString();
            txtClave.Text = dt.Rows[0][2].ToString();           
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        string username, nombre, clave;
        bool estado;

        username = txtUsername.Text;
        nombre = txtNombre.Text;
        clave = txtClave.Text;
    
        estado = UsuarioDAO.Agregar(username,nombre,clave);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Agregado";

        gvUsuarios.DataBind();

        Limpiar(); 
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        string username, nombre, clave;
        bool estado;

        username = txtUsername.Text;
        nombre = txtNombre.Text;
        clave = txtClave.Text;
        
        estado = UsuarioDAO.Agregar(username, nombre, clave);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Modificado";

        gvUsuarios.DataBind();

        Limpiar();
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        string username;
        bool estado;

        username = txtUsername.Text;

        estado = UsuarioDAO.Eliminar(username);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Eliminado";

        gvUsuarios.DataBind();

        Limpiar();
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        Limpiar();
    }

    public void Limpiar()
    {
        txtUsername.Text = "";
        txtNombre.Text = "";
        txtClave.Text = "";    
    }
}