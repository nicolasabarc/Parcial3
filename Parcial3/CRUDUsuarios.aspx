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
    .auto-style43 {
        width: 515px;
        text-align: center;
    }
    .auto-style45 {
        width: 428px;
        height: 24px;
    }
    .auto-style46 {
        width: 428px;
    }
    .auto-style47 {
        height: 23px;
        width: 428px;
    }
    .auto-style48 {
        width: 428px;
        height: 30px;
    }
    .auto-style52 {
        width: 515px;
        height: 24px;
    }
    .auto-style55 {
        height: 23px;
        width: 413px;
    }
    .auto-style58 {
        width: 413px;
    }
    .auto-style59 {
        width: 515px;
    }
    .auto-style60 {
        height: 23px;
        width: 515px;
    }
    .auto-style63 {
        width: 122px;
        height: 30px;
    }
    .auto-style64 {
        width: 123px;
        height: 30px;
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
    <table class="auto-style38">
        <tr>
            <td colspan="3">    <table class="auto-style27">
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style35" colspan="2"><strong>MANTENEDOR DE USUARIOS</strong></td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style52" colspan="4"></td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style58" colspan="2">USERNAME:</td>
            <td class="auto-style59" colspan="2">
                <asp:TextBox ID="txtUsername" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style55" colspan="2">NOMBRE:</td>
            <td class="auto-style60" colspan="2">
                <asp:TextBox ID="txtNombre" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style47">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style58" colspan="2">CLAVE:</td>
            <td class="auto-style59" colspan="2">
                <asp:TextBox ID="txtClave" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClave" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style48">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style58" colspan="2">&nbsp;</td>
            <td class="auto-style59" colspan="2">&nbsp;</td>
            <td class="auto-style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style63">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" CausesValidation="False" OnClick="btnBuscar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style64">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="100px" OnClick="btnAgregar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style64">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" Width="100px" OnClick="btnModificar_Click" CssClass="btn btn-info" />
            </td>
            <td class="auto-style64">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="100px" CausesValidation="False" OnClick="btnEliminar_Click" CssClass="btn btn-danger" />
            </td>
            <td class="auto-style48">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style60" colspan="4"></td>
            <td class="auto-style47"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style60" colspan="4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Width="473px" CausesValidation="False" OnClick="btnLimpiar_Click" CssClass="btn btn-secondary" />
            </td>
            <td class="auto-style47">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style60" colspan="4">&nbsp;</td>
            <td class="auto-style47">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style59" colspan="4">
                <asp:GridView ID="gvUsuarios" runat="server" Width="467px" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" CssClass="table table-borderless table-striped" BorderWidth="0px">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial3ConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            </td>
            <td class="auto-style46">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style43" colspan="4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaPrincipal.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style46">&nbsp;</td>
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

