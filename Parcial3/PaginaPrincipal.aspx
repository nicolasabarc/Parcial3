<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="PaginaPrincipal.aspx.cs" Inherits="PaginaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style19 {
        width: 1283px;
    }
    .auto-style21 {
        width: 427px;
    }
    .auto-style22 {
        width: 427px;
        text-align: center;
    }
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style19">
    <tr>
        <td class="auto-style22">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaMantenedores.aspx">Mantenedores</asp:HyperLink>
        </td>
        <td class="auto-style22">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PaginaVentas.aspx">Ventas</asp:HyperLink>
        </td>
        <td class="auto-style22">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PaginaConsultas.aspx">Consultas</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style21">&nbsp;</td>
    </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
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


