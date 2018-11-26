<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="CRUDMercancias.aspx.cs" Inherits="CRUDMercancias" %>

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
    .auto-style35 {
        text-align: center;
    }
    .auto-style36 {
        width: 427px;
        height: 24px;
    }
    .auto-style34 {
        width: 427px;
    }
    .auto-style31 {
        height: 23px;
        width: 427px;
    }
        .auto-style38 {
            width: 427px;
            height: 26px;
        }
        .auto-style37 {
            width: 427px;
            height: 30px;
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
        <td colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
        <td class="auto-style35" colspan="2"><strong>MANTENEDOR DE MERCADERIAS</strong></td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style36"></td>
        <td class="auto-style36" colspan="4"></td>
        <td class="auto-style36"></td>
    </tr>
    <tr>
        <td class="auto-style38"></td>
        <td class="auto-style38" colspan="2">ID:</td>
        <td class="auto-style38" colspan="2">
            <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
        </td>
            <td class="auto-style34">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="80px" CausesValidation="False" />
            </td>
    </tr>
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style31" colspan="2">DESCRIPCION:</td>
        <td class="auto-style31" colspan="2">
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </td>
            <td class="auto-style31">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="80px" />
            </td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="2">PRECIO:</td>
        <td class="auto-style34" colspan="2">
            <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number"></asp:TextBox>
        </td>
            <td class="auto-style37">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" Width="80px" />
            </td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="2">UNIDADES:</td>
        <td class="auto-style34" colspan="2">
            <asp:TextBox ID="txtUnidades" runat="server" TextMode="Number"></asp:TextBox>
        </td>
            <td class="auto-style34">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="80px" CausesValidation="False" />
            </td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="2">&nbsp;</td>
        <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">
                <asp:Button ID="btnListar" runat="server" Text="Listar" Width="80px" CausesValidation="False" />
            </td>
    </tr>
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style31" colspan="4"></td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style31" colspan="4">
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="417px" CausesValidation="False" />
        </td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style31" colspan="4">&nbsp;</td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="4">
            <asp:GridView ID="GridView1" runat="server" Width="415px">
            </asp:GridView>
        </td>
        <td class="auto-style34">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="4">&nbsp;</td>
        <td class="auto-style34">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="4">&nbsp;</td>
        <td class="auto-style34">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style34" colspan="4">&nbsp;</td>
        <td class="auto-style34">&nbsp;</td>
    </tr>
</table>
</asp:Content>

