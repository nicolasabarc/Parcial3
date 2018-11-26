<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="ConsultaFacturaID.aspx.cs" Inherits="ConsultaFacturaID" %>

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
                <asp:Label ID="lblUsuario" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style27">
        <tr>
            <td class="auto-style30">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style18" colspan="2">CONSULTAR FACTURA POR ID DE FOLIO</td>
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
            <td class="auto-style30">FOLIO:</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
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
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" Width="639px" OnClick="btnConsultar_Click" />
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
                <asp:GridView ID="gvFacturas" runat="server" Width="642px">
                </asp:GridView>
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
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
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

