<%@ Page Title="" Language="C#" MasterPageFile="~/Base.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style22 {
        width: 215px;
    }
    .auto-style23 {
        width: 214px;
        text-align: center;
        height: 19px;
    }
    .auto-style24 {
        width: 448px;
        text-align: center;
        height: 19px;
    }
    .auto-style25 {
        width: 215px;
        text-align: center;
        height: 19px;
    }
    .auto-style26 {
        width: 214px;
        height: 27px;
    }
    .auto-style27 {
        height: 27px;
    }
    .auto-style28 {
        width: 215px;
        height: 27px;
    }
    .auto-style29 {
        text-align: right;
    }
    .auto-style30 {
        width: 213px;
        height: 26px;
    }
    .auto-style31 {
        height: 26px;
    }
    .auto-style32 {
        width: 215px;
        height: 26px;
    }
    .auto-style33 {
        height: 27px;
        text-align: right;
    }
    .auto-style35 {
        width: 213px;
        height: 50px;
    }
    .auto-style36 {
        text-align: right;
        height: 50px;
    }
    .auto-style37 {
        height: 50px;
    }
    .auto-style38 {
        width: 215px;
        height: 50px;
    }
    .auto-style39 {
        width: 215px;
        text-align: center;
        height: 19px;
    }
    .auto-style40 {
        width: 213px;
        height: 27px;
        text-align: left;
    }
    .auto-style42 {
        width: 218px;
        text-align: center;
        height: 19px;
    }
    .auto-style43 {
        width: 213px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style43"></td>
        <td class="auto-style3" colspan="4"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style43"></td>
        <td class="auto-style23" rowspan="2">&nbsp;</td>
        <td class="auto-style42" colspan="2" rowspan="2"><strong>Bienvenido</strong></td>
        <td class="auto-style39" rowspan="2">&nbsp;</td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style43">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style43"></td>
        <td class="auto-style3" colspan="2"></td>
        <td class="auto-style3" colspan="2"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style43">&nbsp;</td>
        <td class="auto-style29" colspan="2">Usuario:&nbsp;&nbsp; </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" Width="195px"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style22">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style35"></td>
        <td class="auto-style36" colspan="2">Clave:&nbsp;&nbsp; </td>
        <td class="auto-style37">
            <asp:TextBox ID="txtClave" runat="server" TextMode="Password" CssClass="form-control" Width="195px"></asp:TextBox>
        </td>
        <td class="auto-style37">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClave" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style38"></td>
    </tr>
    <tr>
        <td class="auto-style40"></td>
        <td class="auto-style33" colspan="2">
            &nbsp;</td>
        <td class="auto-style28">
            <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar" Width="202px" CssClass="btn btn-primary" />
        </td>
        <td class="auto-style27">
            &nbsp;</td>
        <td class="auto-style28"></td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        &nbsp;&nbsp;<td class="auto-style31" colspan="2">&nbsp;&nbsp;</td>
        <td class="auto-style31" colspan="2">&nbsp;</td>
        <td class="auto-style32"></td>
    </tr>
    <tr>
        <td class="auto-style43">&nbsp;</td>
        <td class="text-center" colspan="4">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
        <td class="auto-style22">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style43">&nbsp;</td>
        <td class="auto-style8" colspan="4">&nbsp;</td>
        <td class="auto-style22">&nbsp;</td>
    </tr>
</table>
</asp:Content>

