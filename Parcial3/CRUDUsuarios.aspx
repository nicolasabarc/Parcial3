<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="CRUDUsuarios.aspx.cs" Inherits="CRUDUsuarios" %>

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
        .auto-style37 {
            width: 427px;
            height: 30px;
        }
        .auto-style38 {
            width: 1305px;
        }
        .auto-style39 {
            width: 4px;
        }
        .auto-style40 {
            width: 548px;
        }
        .auto-style41 {
            width: 549px;
        }
        .auto-style42 {
            width: 186px;
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
    <table class="auto-style38">
        <tr>
            <td colspan="3">    <table class="auto-style27">
        <tr>
            <td colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style35" colspan="2"><strong>MANTENEDOR DE USUARIOS</strong></td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style36" colspan="4"></td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">USERNAME:</td>
            <td class="auto-style34" colspan="2">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style34">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="80px" CausesValidation="False" OnClick="btnBuscar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style31" colspan="2">NOMBRE:</td>
            <td class="auto-style31" colspan="2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="80px" OnClick="btnAgregar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">CLAVE:</td>
            <td class="auto-style34" colspan="2">
                <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClave" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style37">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" Width="80px" OnClick="btnModificar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
            <td class="auto-style34">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="80px" CausesValidation="False" OnClick="btnEliminar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style37" colspan="2"></td>
            <td class="auto-style37" colspan="2"></td>
            <td class="auto-style37">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style31" colspan="4"></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31" colspan="4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="417px" CausesValidation="False" OnClick="btnLimpiar_Click" />
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
                <asp:GridView ID="gvUsuarios" runat="server" Width="415px" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            </td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style34" colspan="4">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        </table>
            </td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

