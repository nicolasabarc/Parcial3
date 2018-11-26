<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="ConsultaFacturaFecha.aspx.cs" Inherits="ConsultaFacturaFecha" %>

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
            height: 276px;
        }
        .auto-style30 {
            height: 23px;
            width: 320px;
        }
        .auto-style31 {
            height: 23px;
            width: 321px;
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
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style18" colspan="2">
                <h5><strong>CONSULTAR FACTURA POR FECHA</strong></h5>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">FECHA:</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" Width="314px" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="auto-style31">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFecha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style17" colspan="2">
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" Width="639px" OnClick="btnConsultar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style17" colspan="2">
                <asp:GridView ID="gvFacturas" runat="server" Width="642px"  CssClass="table table-borderless table-striped" BorderWidth="0px">
                </asp:GridView>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style18" colspan="2">
                <asp:Label ID="lblError" runat="server" Enabled="False" ForeColor="Red" Text="No se encontraron resultados."></asp:Label>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style18" colspan="2">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style18" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

