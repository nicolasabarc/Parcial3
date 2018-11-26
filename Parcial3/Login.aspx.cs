using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        string username = txtUsuario.Text;
        string clave = txtClave.Text;
        string usuario = "";


        usuario = new UsuarioDAO().Login(username, clave);

        if (!usuario.Equals(""))
        {
            Session["username"] = usuario;

            Response.Redirect("PaginaPrincipal.aspx");
        }
        else
        {
            lblError.Text = "Usuario no existe.";
        }
        
    }

    protected void btnRegistrarse_Click(object sender, EventArgs e)
    {

    }
}