using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing;



public partial class PaginaVentas : System.Web.UI.Page
{
    Random random = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];
        
        txtFolio.Text = random.Next(10, 2000).ToString();
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        int total = 0;
        ArrayList productos = new ArrayList();
        int nroproductos = cbProductos.Items.Cast<ListItem>().Count(li => li.Selected); //Contamos los productos seleccionados
        int cantidadproductos = Int32.Parse(txtCantidad.Text);


        if (nroproductos > 1) //Validamos que se hayan escogido menos de 4 productos
        {
            lblError.Text = "1 productos como maximo.";
            lblError.ForeColor = Color.Red;
        }
        else
        {
            // Recorrer los productos seleccionados
            for (int i = 0; i < cbProductos.Items.Count; i++)
            {
                if (cbProductos.Items[i].Selected) //Si esta seleccionado guardamos su valor y lo agregamos al array
                {
                    total += Int32.Parse(cbProductos.Items[i].Value);
                    productos.Add(i);
                }
            }

            if(nroproductos * cantidadproductos < 5)
            {
                txtTotal.Text = total.ToString();
            } else
            {
                lblError.Text = "Maximo 4 unidades por venta";
                lblError.ForeColor = Color.Red;
            }
        }

    }

    protected void btnPagar_Click(object sender, EventArgs e)
    {
        string rutcliente, fechaemision,textofactura;
        int idfactura,idmercaderia, iddetallefactura, cantidad,totalfactura;
        DateTime fechaSQL = new DateTime();
        bool estado;

        textofactura = txtTotal.Text;

        if (!textofactura.Equals(""))
        {
            idfactura = Int32.Parse(txtFolio.Text);
            idmercaderia = Int32.Parse(cbProductos.SelectedValue);
            iddetallefactura = random.Next(10, 2000);

            fechaSQL = DateTime.Parse(txtFecha.Text);
            fechaemision = fechaSQL.ToShortDateString();

            rutcliente = ddlRut.SelectedItem.ToString();         
          
            cantidad = Int32.Parse(txtCantidad.Text);
            totalfactura = Int32.Parse(txtTotal.Text) * cantidad;

            estado = FacturaDAO.Agregar(idfactura, rutcliente, fechaemision, totalfactura);
            estado = FacturaDAO.AgregarDetalleFactura(iddetallefactura, idfactura, idmercaderia, cantidad, totalfactura);

            lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "";

            enviarAlerta("Factura generada con exito" , idfactura.ToString());
        }
 

    }

    protected void validaProducto_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int nroproductos = cbProductos.Items.Cast<ListItem>().Count(li => li.Selected);
        args.IsValid = (nroproductos > 0);
    }


    public void enviarAlerta(string mensaje, string folio)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + mensaje + ", su N° de Folio es: " + folio + "')", true);
    }

}

    