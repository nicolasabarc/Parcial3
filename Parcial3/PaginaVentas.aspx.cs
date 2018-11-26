﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing;



public partial class PaginaVentas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = (string)Session["username"];

        Random random = new Random();
        txtFolio.Text = random.Next(1001, 2000).ToString();
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        int total = 0;
        ArrayList productos = new ArrayList();
        int nroproductos = cbProductos.Items.Cast<ListItem>().Count(li => li.Selected); //Contamos los productos seleccionados    


        if (nroproductos > 4) //Validamos que se hayan escogido menos de 4 productos
        {

            lblError.Text = "4 productos como maximo.";
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

            txtTotal.Text = total.ToString();
        }

    }

    protected void btnPagar_Click(object sender, EventArgs e)
    {
        string rutcliente, fechaemision;
        int idfactura, totalfactura;
        bool estado;

        idfactura = Int32.Parse(txtFolio.Text);
        rutcliente = ddlRut.SelectedItem.ToString();
        fechaemision = txtFecha.Text;
        totalfactura = Int32.Parse(txtTotal.Text);

        estado = FacturaDAO.Agregar(idfactura, rutcliente, fechaemision, totalfactura);

        lblError.Text = (estado) ? lblError.Text = "Error" : lblError.Text = "Agregada";


    }

    protected void validaProducto_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int nroproductos = cbProductos.Items.Cast<ListItem>().Count(li => li.Selected);
        args.IsValid = (nroproductos > 0);
    }
}

    