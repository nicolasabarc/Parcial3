<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="CRUDClientes.aspx.cs" Inherits="CRUDClientes" %>

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
            width: 411px;
            height: 24px;
        }
        .auto-style37 {
            width: 411px;
            height: 30px;
        }
        .auto-style39 {
            width: 413px;
            height: 24px;
        }
        .auto-style42 {
            width: 413px;
            height: 30px;
        }
        .auto-style43 {
            width: 561px;
            height: 24px;
        }
        .auto-style46 {
            height: 23px;
            width: 377px;
        }
        .auto-style48 {
            width: 377px;
            height: 30px;
        }
        .auto-style49 {
            width: 561px;
            height: 30px;
        }
        .auto-style82 {
            width: 114px;
        }
        .auto-style83 {
            width: 411px;
            height: 53px;
        }
        .auto-style84 {
            width: 377px;
            height: 53px;
        }
        .auto-style85 {
            width: 561px;
            height: 53px;
        }
        .auto-style86 {
            width: 413px;
            height: 53px;
        }
        .auto-style87 {
            width: 411px;
        }
        .auto-style88 {
            width: 413px;
        }
        .auto-style89 {
            height: 23px;
            width: 411px;
        }
        .auto-style90 {
            height: 23px;
            width: 413px;
        }
        .auto-style91 {
            width: 113px;
        }
        .auto-style94 {
            width: 377px;
        }
        .auto-style95 {
            width: 561px;
        }
        .auto-style96 {
            height: 23px;
            width: 561px;
        }
        .auto-style100 {
            width: 561px;
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
            <td class="auto-style35" colspan="2"><strong>MANTENEDOR DE CLIENTES</strong></td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style43" colspan="4"></td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style94" colspan="2">RUT:</td>
            <td class="auto-style95" colspan="2">
                <asp:TextBox ID="txtRut" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style88">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style46" colspan="2">NOMBRE:</td>
            <td class="auto-style96" colspan="2">
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style90">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style48" colspan="2">APELLIDO:</td>
            <td class="auto-style49" colspan="2">
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellido" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style42">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style83"></td>
            <td class="auto-style84" colspan="2">DIRECCION:</td>
            <td class="auto-style85" colspan="2">
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style86">
            </td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style94" colspan="2">FONO:</td>
            <td class="auto-style95" colspan="2">
                <asp:TextBox ID="txtFono" runat="server" TextMode="Phone" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFono" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style88">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style94" colspan="2">&nbsp;</td>
            <td class="auto-style95" colspan="2">
                &nbsp;</td>
            <td class="auto-style88">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89"></td>
            <td class="auto-style91">
                <asp:Button ID="btnBuscar0" runat="server" Text="Buscar" Width="100px" CausesValidation="False" OnClick="btnBuscar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style82">
                <asp:Button ID="btnAgregar0" runat="server" Text="Agregar" Width="100px" OnClick="btnAgregar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style82">
                <asp:Button ID="btnModificar0" runat="server" Text="Modificar" Width="100px" OnClick="btnModificar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style82">
                <asp:Button ID="btnEliminar0" runat="server" Text="Eliminar" Width="100px" CausesValidation="False" OnClick="btnEliminar_Click" CssClass="btn btn-danger" />
            </td>
            <td class="auto-style90"></td>
        </tr>
        <tr>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style96" colspan="4">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style96" colspan="4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="452px" CausesValidation="False" OnClick="btnLimpiar_Click" CssClass="btn btn-secondary" />
            </td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style89">&nbsp;</td>
            <td class="auto-style96" colspan="4">&nbsp;</td>
            <td class="auto-style90">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style95" colspan="4">
                <asp:GridView ID="gvClientes" runat="server" Width="448px" AutoGenerateColumns="False" DataKeyNames="rut" DataSourceID="SqlDataSource1"  CssClass="table table-borderless table-striped" BorderWidth="0px" style="margin-right: 0px">
                    <Columns>
                        <asp:BoundField DataField="rut" HeaderText="rut" ReadOnly="True" SortExpression="rut" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                        <asp:BoundField DataField="fono" HeaderText="fono" SortExpression="fono" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT * FROM [Clientes]"></asp:SqlDataSource>
            </td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style100" colspan="4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style100" colspan="4">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style95" colspan="4">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

