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
        width: 407px;
        height: 24px;
    }
        .auto-style37 {
            width: 410px;
            height: 30px;
        }
        .auto-style40 {
            width: 410px;
            height: 24px;
        }
        .auto-style43 {
            width: 624px;
            height: 24px;
        }
        .auto-style44 {
            width: 403px;
            height: 26px;
        }
        .auto-style46 {
            height: 23px;
            width: 403px;
        }
        .auto-style57 {
            width: 403px;
        }
        .auto-style60 {
            width: 115px;
        }
        .auto-style61 {
            width: 410px;
            height: 26px;
        }
        .auto-style62 {
            width: 407px;
            height: 26px;
        }
        .auto-style63 {
            width: 410px;
        }
        .auto-style64 {
            height: 23px;
            width: 407px;
        }
        .auto-style65 {
            height: 23px;
            width: 410px;
        }
        .auto-style66 {
            width: 407px;
        }
        .auto-style69 {
            height: 23px;
            width: 115px;
        }
        .auto-style71 {
            width: 624px;
            height: 26px;
        }
        .auto-style72 {
            height: 23px;
            width: 624px;
        }
        .auto-style74 {
            width: 624px;
        }
        .auto-style75 {
            height: 23px;
            width: 116px;
        }
        .auto-style76 {
            width: 116px;
        }
        .auto-style80 {
            width: 624px;
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
        <td colspan="2">
                &nbsp;</td>
        <td class="auto-style35" colspan="2"><strong>MANTENEDOR DE MERCADERIAS</strong></td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style36"></td>
        <td class="auto-style43" colspan="4"></td>
        <td class="auto-style40"></td>
    </tr>
    <tr>
        <td class="auto-style62"></td>
        <td class="auto-style44" colspan="2">ID:</td>
        <td class="auto-style71" colspan="2">
            <asp:TextBox ID="txtId" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            <td class="auto-style63">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style64"></td>
        <td class="auto-style46" colspan="2">DESCRIPCION:</td>
        <td class="auto-style72" colspan="2">
            <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            <td class="auto-style65">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style57" colspan="2">PRECIO:</td>
        <td class="auto-style74" colspan="2">
            <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrecio" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            <td class="auto-style37">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style57" colspan="2">UNIDADES:</td>
        <td class="auto-style74" colspan="2">
            <asp:TextBox ID="txtUnidades" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUnidades" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            <td class="auto-style63">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style62"></td>
        <td class="auto-style44" colspan="2"></td>
        <td class="auto-style71" colspan="2">
        </td>
            <td class="auto-style61">
            </td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
            <td class="auto-style60">
                <asp:Button ID="btnBuscar0" runat="server" Text="Buscar" Width="100px" CausesValidation="False" OnClick="btnBuscar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style69">
                <asp:Button ID="btnAgregar0" runat="server" Text="Agregar" Width="100px" OnClick="btnAgregar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style75">
                <asp:Button ID="btnModificar0" runat="server" Text="Modificar" Width="100px" OnClick="btnModificar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style76">
                <asp:Button ID="btnEliminar0" runat="server" Text="Eliminar" Width="100px" CausesValidation="False" OnClick="btnEliminar_Click" CssClass="btn btn-danger" />
            </td>
            <td class="auto-style63">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style64"></td>
        <td class="auto-style72" colspan="4"></td>
        <td class="auto-style65"></td>
    </tr>
    <tr>
        <td class="auto-style64">&nbsp;</td>
        <td class="auto-style72" colspan="4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="459px" CausesValidation="False" OnClick="btnLimpiar_Click" CssClass="btn btn-secondary" />
        </td>
        <td class="auto-style65">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style64">&nbsp;</td>
        <td class="auto-style72" colspan="4">&nbsp;</td>
        <td class="auto-style65">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style74" colspan="4">
            <asp:GridView ID="gvMercaderias" runat="server" Width="452px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  CssClass="table table-borderless table-striped" BorderWidth="0px">
                <Columns>
                    <asp:BoundField DataField="idmercaderia" HeaderText="idmercaderia" SortExpression="idmercaderia" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                    <asp:BoundField DataField="unidades" HeaderText="unidades" SortExpression="unidades" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT * FROM [Mercaderias]"></asp:SqlDataSource>
        </td>
        <td class="auto-style63">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style80" colspan="4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
        <td class="auto-style63">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style80" colspan="4">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
        <td class="auto-style63">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">&nbsp;</td>
        <td class="auto-style74" colspan="4">&nbsp;</td>
        <td class="auto-style63">&nbsp;</td>
    </tr>
</table>
</asp:Content>

