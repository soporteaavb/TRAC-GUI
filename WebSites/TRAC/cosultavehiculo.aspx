<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="cosultavehiculo.aspx.cs" Inherits="cosultavehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID_PATENTE" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="COLOR" HeaderText="COLOR" SortExpression="COLOR" />
        <asp:BoundField DataField="MODELO" HeaderText="MODELO" 
            SortExpression="MODELO" />
        <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
        <asp:BoundField DataField="ID_PATENTE" HeaderText="ID_PATENTE" ReadOnly="True" 
            SortExpression="ID_PATENTE" />
        <asp:BoundField DataField="NOMBRE_ESTADO" HeaderText="NOMBRE_ESTADO" 
            SortExpression="NOMBRE_ESTADO" />
    </Columns>
</asp:GridView>
<p>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT VEHICULO.COLOR, VEHICULO.MODELO, VEHICULO.MARCA, VEHICULO.ID_PATENTE, TIPO_ESTADO.NOMBRE_ESTADO FROM TIPO_ESTADO INNER JOIN VEHICULO ON TIPO_ESTADO.ID_ESTADO = VEHICULO.ID_ESTADO">
    </asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>

