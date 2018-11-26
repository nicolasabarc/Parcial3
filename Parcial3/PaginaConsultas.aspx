<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="PaginaConsultas.aspx.cs" Inherits="PaginaConsultas" %>

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
        }
        .auto-style34 {
            width: 427px;
        }
        .auto-style35 {
            width: 427px;
            text-align: center;
        }
        .auto-style37 {
            height: 20px;
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
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style35" colspan="2">CONSULTAS</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ConsultaFacturaID.aspx">Consultar Factura por ID</asp:HyperLink>
            </td>
            <td class="auto-style37" colspan="2">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultaFacturaFecha.aspx">Consultar Factura(s) por Fecha</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

