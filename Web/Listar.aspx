<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Web.Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Listado De Personas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridVPersonas" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="DIRECCION" HeaderText="Direccion" SortExpression="DIRECCION" />
        <asp:BoundField DataField="TELEFONO" HeaderText="Telefono" SortExpression="TELEFONO" />
        <asp:BoundField DataField="PROFESION" HeaderText="Profesion" SortExpression="PROFESION" />
        <asp:BoundField DataField="ESTADO" HeaderText="Estado" SortExpression="ESTADO" />
        <asp:BoundField DataField="SEXO" HeaderText="Sexo" SortExpression="SEXO" />
        <asp:BoundField DataField="FECHA_NACIMIENTO" HeaderText="FechaNacimiento" SortExpression="FECHA_NACIMIENTO" />
        <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" SortExpression="NOMBRE" />
        <asp:BoundField DataField="RUT" HeaderText="Rut" SortExpression="RUT" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
</asp:Content>
