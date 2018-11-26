<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="PaginaMantenedores.aspx.cs" Inherits="PaginaMantenedores" %>

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
        .auto-style30 {
            height: 23px;
            width: 427px;
        }
        .auto-style31 {
            width: 427px;
        }
        .auto-style32 {
            height: 23px;
            width: 427px;
            text-align: center;
        }
        .auto-style33 {
            width: 427px;
            height: 26px;
            text-align: center;
        }
    .auto-style34 {
        width: 427px;
        text-align: center;
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
            <td class="auto-style32"><strong>MANTENEDORES</strong></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CRUDClientes.aspx">Clientes</asp:HyperLink>
            </td>
            <td class="auto-style33">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CRUDMercancias.aspx">Mercaderias</asp:HyperLink>
            </td>
            <td class="auto-style33">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CRUDUsuarios.aspx">Usuarios</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style34">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

