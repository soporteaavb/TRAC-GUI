<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="buscaridreserva.aspx.cs" Inherits="buscaridreserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    Buscar ID reserva :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Button" />
</p>
<p>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ID_RESERVA" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px">
        <Fields>
            <asp:BoundField DataField="ID_RESERVA" HeaderText="ID_RESERVA" ReadOnly="True" 
                SortExpression="ID_RESERVA" />
            <asp:BoundField DataField="KM_INICIAL" HeaderText="KM_INICIAL" 
                SortExpression="KM_INICIAL" />
            <asp:BoundField DataField="KM_FINAL" HeaderText="KM_FINAL" 
                SortExpression="KM_FINAL" />
            <asp:BoundField DataField="FECHA_RETIRO" HeaderText="FECHA_RETIRO" 
                SortExpression="FECHA_RETIRO" />
            <asp:BoundField DataField="FECHA_ENTREGA" HeaderText="FECHA_ENTREGA" 
                SortExpression="FECHA_ENTREGA" />
            <asp:BoundField DataField="LUGAR_RETIRO" HeaderText="LUGAR_RETIRO" 
                SortExpression="LUGAR_RETIRO" />
            <asp:BoundField DataField="LUGAR_ENTREGA" HeaderText="LUGAR_ENTREGA" 
                SortExpression="LUGAR_ENTREGA" />
            <asp:BoundField DataField="VALOR_RESERVA" HeaderText="VALOR_RESERVA" 
                SortExpression="VALOR_RESERVA" />
            <asp:BoundField DataField="RUT_CLIENTE" HeaderText="RUT_CLIENTE" 
                SortExpression="RUT_CLIENTE" />
            <asp:BoundField DataField="ID_PATENTE" HeaderText="ID_PATENTE" 
                SortExpression="ID_PATENTE" />
            <asp:BoundField DataField="ID_SERVICIO" HeaderText="ID_SERVICIO" 
                SortExpression="ID_SERVICIO" />
            <asp:BoundField DataField="NUMERO_TRANSACCION" HeaderText="NUMERO_TRANSACCION" 
                SortExpression="NUMERO_TRANSACCION" />
            <asp:BoundField DataField="RUT_ADMIINISTRADOR" HeaderText="RUT_ADMIINISTRADOR" 
                SortExpression="RUT_ADMIINISTRADOR" />
        </Fields>
    </asp:DetailsView>
</p>
<p>
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [RESERVA] WHERE ([ID_RESERVA] = @ID_RESERVA)">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="ID_RESERVA" 
            PropertyName="Text" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

