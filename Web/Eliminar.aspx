<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Web.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Eliminar Personas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ddlPersonas" runat="server"></asp:DropDownList>
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Registro" OnClick="btnEliminar_Click" />
</asp:Content>
