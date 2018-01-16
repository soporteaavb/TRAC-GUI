<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="buscarcliente.aspx.cs" Inherits="buscarcliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    Buscar cliente por Rut:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="RUT" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" 
                SortExpression="RUT" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" 
                SortExpression="APELLIDO" />
            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" 
                SortExpression="DIRECCION" />
            <asp:BoundField DataField="CIUDAD" HeaderText="CIUDAD" 
                SortExpression="CIUDAD" />
            <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" 
                SortExpression="TELEFONO" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="TIPO_LICENCIA" HeaderText="TIPO_LICENCIA" 
                SortExpression="TIPO_LICENCIA" />
        </Fields>
    </asp:DetailsView>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [CLIENTE] WHERE ([RUT] = @RUT)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="RUT" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

