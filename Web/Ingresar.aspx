<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="Web.Ingresar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Ingresar
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblRut" runat="server" Text="Rut"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRut" runat="server" placeholder="Ingrese Rut"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server" 
                        ControlToValidate="txtRut"
                        ForeColor="Red"
                        ErrorMessage="Rut Es Requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese Nombre"></asp:TextBox>
                </td>
                  <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        runat="server" 
                        ControlToValidate="txtNombre"
                        ForeColor="Red"
                        ErrorMessage="Nombre Es Requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFechaNac" runat="server" Text="FechaNacimiento"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFechaNac" runat="server" placeholder="Ingrese Fecha" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                        runat="server" 
                        ControlToValidate="txtFechaNac"
                        ForeColor="Red"
                        ErrorMessage="Fecha De Nacimiento Es Requerida"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSex" runat="server" Text="Sexo"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSexo" runat="server"></asp:DropDownList>
                </td>
                <td>

                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEstado" runat="server"></asp:DropDownList>
                </td>
                 <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProfesion" runat="server" Text="Profesion"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProfesion" runat="server" 
                        placeholder="Ingrese Profesion"/>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFono" runat="server" 
                        placeholder="Ingrese Fono"/>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                        runat="server" 
                        ControlToValidate="txtFono"
                        ForeColor="Red"
                        ErrorMessage="Fono Es Requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" 
                       />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                        runat="server" 
                        ControlToValidate="txtDireccion"
                        ForeColor="Red"
                        ErrorMessage="Direccion Es Requerida"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar Persona" OnClick="btnIngresar_Click" 
                        />
                </td>
                <td>
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" 
                       />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <p id="respuesta" runat="server" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
