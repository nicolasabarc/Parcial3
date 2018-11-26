<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="PaginaVentas.aspx.cs" Inherits="PaginaVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style24 {
        width: 429px;
    }
    .auto-style25 {
        width: 213px;
    }
    .auto-style26 {
        width: 214px;
        text-align: left;
    }
        .auto-style27 {
            width: 1283px;
            height: 271px;
        }
        .auto-style37 {
            height: 24px;
            width: 390px;
            text-decoration: underline;
            text-align: left;
        }
        .auto-style38 {
            height: 25px;
            width: 321px;
            text-decoration: underline;
        }
        .auto-style42 {
            height: 26px;
            width: 321px;
        }
        .auto-style45 {
            text-decoration: underline;
        }
        .auto-style46 {
            height: 24px;
            width: 320px;
        }
        .auto-style47 {
            height: 24px;
            width: 390px;
        }
        .auto-style48 {
            height: 24px;
            width: 321px;
        }
        .auto-style50 {
            height: 25px;
            width: 320px;
        }
        .auto-style51 {
            height: 25px;
            width: 321px;
        }
        .auto-style52 {
            height: 25px;
            width: 390px;
        }
        .auto-style54 {
            height: 26px;
            width: 320px;
        }
        .auto-style55 {
            height: 26px;
            width: 390px;
        }
        .auto-style56 {
            height: 25px;
            width: 390px;
            text-align: left;
        }
        .nuevoEstilo1 {
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style25">Iniciaste sesión como:</td>
            <td class="auto-style26">
                <strong>
                <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style27">
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style37" colspan="2">
                <h5><strong>DATOS DE LA VENTA:</strong></h5>
            </td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style47" colspan="2">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style48">FOLIO:</td>
            <td class="auto-style48">
                <asp:TextBox ID="txtFolio" runat="server" CssClass="form-control" Enabled="False" Width="100px" MaxLength="4"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFolio" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style51">RUT CLIENTE:</td>
            <td class="auto-style51">
                <asp:DropDownList ID="ddlRut" runat="server" DataSourceID="SqlDataSource2" DataTextField="rut" DataValueField="rut" Width="200px" CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT [rut] FROM [Clientes]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlRut" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style51">FECHA EMISION:</td>
            <td class="auto-style51">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFecha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style52" colspan="2"></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style56" colspan="2">
                <h5><strong>&nbsp;<span class="auto-style45">SELECCIONE PRODUCTOS:</span></strong></h5>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">
                <asp:CheckBoxList ID="cbProductos" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="precio">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT [idmercaderia], [descripcion], [precio] FROM [Mercaderias]"></asp:SqlDataSource>
                <asp:CustomValidator ID="validaProducto" runat="server" ErrorMessage="Debe seleccionar un producto*" ForeColor="Red" OnServerValidate="validaProducto_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style51"><strong>TOTAL: </strong></td>
            <td class="auto-style38"><strong>
                <asp:TextBox ID="txtTotal" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                </strong></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style54"></td>
            <td class="auto-style55" colspan="2"></td>
            <td class="auto-style42"></td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style51">
                <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular Total" Width="150px" CssClass="btn btn-primary" />
            </td>
            <td class="auto-style51">
                <asp:Button ID="btnPagar" runat="server" OnClick="btnPagar_Click" Text="Generar Factura" Width="150px" CssClass="btn btn-success" />
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style56" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">
                &nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style52" colspan="2">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

