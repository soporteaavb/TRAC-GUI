<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="mantenedorreserva.aspx.cs" Inherits="mantenedorreserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID_RESERVA" DataSourceID="SqlDataSource1" 
    EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" 
        ForeColor="Red" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [RESERVA] WHERE [ID_RESERVA] = @ID_RESERVA" 
    InsertCommand="INSERT INTO [RESERVA] ([ID_RESERVA], [KM_INICIAL], [KM_FINAL], [FECHA_RETIRO], [FECHA_ENTREGA], [LUGAR_RETIRO], [LUGAR_ENTREGA], [VALOR_RESERVA], [RUT_CLIENTE], [ID_PATENTE], [ID_SERVICIO], [NUMERO_TRANSACCION], [RUT_ADMIINISTRADOR]) VALUES (@ID_RESERVA, @KM_INICIAL, @KM_FINAL, @FECHA_RETIRO, @FECHA_ENTREGA, @LUGAR_RETIRO, @LUGAR_ENTREGA, @VALOR_RESERVA, @RUT_CLIENTE, @ID_PATENTE, @ID_SERVICIO, @NUMERO_TRANSACCION, @RUT_ADMIINISTRADOR)" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT [ID_RESERVA], [KM_INICIAL], [KM_FINAL], [FECHA_RETIRO], [FECHA_ENTREGA], [LUGAR_RETIRO], [LUGAR_ENTREGA], [VALOR_RESERVA], [RUT_CLIENTE], [ID_PATENTE], [ID_SERVICIO], [NUMERO_TRANSACCION], [RUT_ADMIINISTRADOR] FROM [RESERVA]" 
    UpdateCommand="UPDATE [RESERVA] SET [KM_INICIAL] = @KM_INICIAL, [KM_FINAL] = @KM_FINAL, [FECHA_RETIRO] = @FECHA_RETIRO, [FECHA_ENTREGA] = @FECHA_ENTREGA, [LUGAR_RETIRO] = @LUGAR_RETIRO, [LUGAR_ENTREGA] = @LUGAR_ENTREGA, [VALOR_RESERVA] = @VALOR_RESERVA, [RUT_CLIENTE] = @RUT_CLIENTE, [ID_PATENTE] = @ID_PATENTE, [ID_SERVICIO] = @ID_SERVICIO, [NUMERO_TRANSACCION] = @NUMERO_TRANSACCION, [RUT_ADMIINISTRADOR] = @RUT_ADMIINISTRADOR WHERE [ID_RESERVA] = @ID_RESERVA">
    <DeleteParameters>
        <asp:Parameter Name="ID_RESERVA" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID_RESERVA" Type="Int32" />
        <asp:Parameter Name="KM_INICIAL" Type="Int32" />
        <asp:Parameter Name="KM_FINAL" Type="Int32" />
        <asp:Parameter Name="FECHA_RETIRO" Type="DateTime" />
        <asp:Parameter Name="FECHA_ENTREGA" Type="DateTime" />
        <asp:Parameter Name="LUGAR_RETIRO" Type="String" />
        <asp:Parameter Name="LUGAR_ENTREGA" Type="String" />
        <asp:Parameter Name="VALOR_RESERVA" Type="Int32" />
        <asp:Parameter Name="RUT_CLIENTE" Type="String" />
        <asp:Parameter Name="ID_PATENTE" Type="String" />
        <asp:Parameter Name="ID_SERVICIO" Type="Int32" />
        <asp:Parameter Name="NUMERO_TRANSACCION" Type="Int32" />
        <asp:Parameter Name="RUT_ADMIINISTRADOR" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="KM_INICIAL" Type="Int32" />
        <asp:Parameter Name="KM_FINAL" Type="Int32" />
        <asp:Parameter Name="FECHA_RETIRO" Type="DateTime" />
        <asp:Parameter Name="FECHA_ENTREGA" Type="DateTime" />
        <asp:Parameter Name="LUGAR_RETIRO" Type="String" />
        <asp:Parameter Name="LUGAR_ENTREGA" Type="String" />
        <asp:Parameter Name="VALOR_RESERVA" Type="Int32" />
        <asp:Parameter Name="RUT_CLIENTE" Type="String" />
        <asp:Parameter Name="ID_PATENTE" Type="String" />
        <asp:Parameter Name="ID_SERVICIO" Type="Int32" />
        <asp:Parameter Name="NUMERO_TRANSACCION" Type="Int32" />
        <asp:Parameter Name="RUT_ADMIINISTRADOR" Type="String" />
        <asp:Parameter Name="ID_RESERVA" Type="Int32" />
    </UpdateParameters>
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

