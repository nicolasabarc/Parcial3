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
        .auto-style34 {
            height: 24px;
            width: 427px;
        }
        .auto-style35 {
            height: 25px;
            width: 427px;
        }
        .auto-style36 {
            height: 24px;
            width: 427px;
            text-align: center;
        }
        .auto-style37 {
            height: 24px;
            width: 427px;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style38 {
            height: 25px;
            width: 427px;
            text-decoration: underline;
        }
        .auto-style39 {
            margin-bottom: 0px;
        }
        .auto-style40 {
            height: 25px;
            width: 427px;
            text-decoration: underline;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style25">Iniciaste sesión como:</td>
            <td class="auto-style26">
                <asp:Label ID="lblUsuario" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style27">
        <tr>
            <td class="auto-style34">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style36" colspan="2">VENTA DE PRODUCTOS</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style34" colspan="2"></td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style37" colspan="2"><strong>DATOS DE LA VENTA:</strong></td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34">FOLIO:</td>
            <td class="auto-style34">
                <asp:TextBox ID="txtFolio" runat="server" CssClass="auto-style39" Enabled="False" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">RUT CLIENTE:</td>
            <td class="auto-style35">
                <asp:DropDownList ID="ddlRut" runat="server" DataSourceID="SqlDataSource2" DataTextField="rut" DataValueField="rut" Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT [rut] FROM [Clientes]"></asp:SqlDataSource>
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style35">FECHA EMISION:</td>
            <td class="auto-style35">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style40" colspan="2"><strong>SELECCIONE PRODUCTOS:</strong></td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">
                <asp:CheckBoxList ID="cbProductos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="precio">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT [idmercaderia], [descripcion], [precio] FROM [Mercaderias]"></asp:SqlDataSource>
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style38"><strong>TOTAL: </strong></td>
            <td class="auto-style38"><strong>
                <asp:TextBox ID="txtTotal" runat="server" Width="200px"></asp:TextBox>
                </strong></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35">
                <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular Total" Width="150px" />
            </td>
            <td class="auto-style35">
                <asp:Button ID="btnPagar" runat="server" OnClick="btnPagar_Click" Text="Generar Factura" Width="150px" />
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style35" colspan="2">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

