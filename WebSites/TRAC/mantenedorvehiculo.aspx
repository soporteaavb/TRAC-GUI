<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="mantenedorvehiculo.aspx.cs" Inherits="mantenedorvehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID_PATENTE" DataSourceID="SqlDataSource1" 
    EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" 
        ForeColor="Red" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_PATENTE" HeaderText="ID_PATENTE" ReadOnly="True" 
            SortExpression="ID_PATENTE" />
        <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
        <asp:BoundField DataField="MODELO" HeaderText="MODELO" 
            SortExpression="MODELO" />
        <asp:BoundField DataField="COLOR" HeaderText="COLOR" SortExpression="COLOR" />
        <asp:BoundField DataField="NUMERO_MOTOR" HeaderText="NUMERO_MOTOR" 
            SortExpression="NUMERO_MOTOR" />
        <asp:BoundField DataField="NUMERO_CHASIS" HeaderText="NUMERO_CHASIS" 
            SortExpression="NUMERO_CHASIS" />
        <asp:BoundField DataField="TIPO_VEHICULO" HeaderText="TIPO_VEHICULO" 
            SortExpression="TIPO_VEHICULO" />
        <asp:BoundField DataField="AÑO" HeaderText="AÑO" SortExpression="AÑO" />
        <asp:BoundField DataField="ID_ESTADO" HeaderText="ID_ESTADO" 
            SortExpression="ID_ESTADO" />
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
    DeleteCommand="DELETE FROM [VEHICULO] WHERE [ID_PATENTE] = @ID_PATENTE" 
    InsertCommand="INSERT INTO [VEHICULO] ([ID_PATENTE], [MARCA], [MODELO], [COLOR], [NUMERO_MOTOR], [NUMERO_CHASIS], [TIPO_VEHICULO], [AÑO], [ID_ESTADO]) VALUES (@ID_PATENTE, @MARCA, @MODELO, @COLOR, @NUMERO_MOTOR, @NUMERO_CHASIS, @TIPO_VEHICULO, @AÑO, @ID_ESTADO)" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT [ID_PATENTE], [MARCA], [MODELO], [COLOR], [NUMERO_MOTOR], [NUMERO_CHASIS], [TIPO_VEHICULO], [AÑO], [ID_ESTADO] FROM [VEHICULO]" 
    UpdateCommand="UPDATE [VEHICULO] SET [MARCA] = @MARCA, [MODELO] = @MODELO, [COLOR] = @COLOR, [NUMERO_MOTOR] = @NUMERO_MOTOR, [NUMERO_CHASIS] = @NUMERO_CHASIS, [TIPO_VEHICULO] = @TIPO_VEHICULO, [AÑO] = @AÑO, [ID_ESTADO] = @ID_ESTADO WHERE [ID_PATENTE] = @ID_PATENTE">
    <DeleteParameters>
        <asp:Parameter Name="ID_PATENTE" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID_PATENTE" Type="String" />
        <asp:Parameter Name="MARCA" Type="String" />
        <asp:Parameter Name="MODELO" Type="String" />
        <asp:Parameter Name="COLOR" Type="String" />
        <asp:Parameter Name="NUMERO_MOTOR" Type="Int32" />
        <asp:Parameter Name="NUMERO_CHASIS" Type="Int32" />
        <asp:Parameter Name="TIPO_VEHICULO" Type="String" />
        <asp:Parameter Name="AÑO" Type="DateTime" />
        <asp:Parameter Name="ID_ESTADO" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MARCA" Type="String" />
        <asp:Parameter Name="MODELO" Type="String" />
        <asp:Parameter Name="COLOR" Type="String" />
        <asp:Parameter Name="NUMERO_MOTOR" Type="Int32" />
        <asp:Parameter Name="NUMERO_CHASIS" Type="Int32" />
        <asp:Parameter Name="TIPO_VEHICULO" Type="String" />
        <asp:Parameter Name="AÑO" Type="DateTime" />
        <asp:Parameter Name="ID_ESTADO" Type="Int32" />
        <asp:Parameter Name="ID_PATENTE" Type="String" />
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
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
            <table style="width:100%;">
                <tr>
                    <td>
        <asp:Menu ID="Menu1" runat="server" BackColor="#6699FF" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1.6em" 
            ForeColor="Red" Orientation="Horizontal" StaticSubMenuIndent="20px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="consultas" Value="consultas">
                    <asp:MenuItem NavigateUrl="~/consultacliente.aspx" Text="clientes" 
                        Value="clientes"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/consultareserva.aspx" Text="reserva" 
                        Value="reserva"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/cosultavehiculo.aspx" Text="vehiculo" 
                        Value="vehiculo"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="mantenedor" Value="mantenedor">
                    <asp:MenuItem NavigateUrl="~/mantenedorcliente.aspx" Text="cliente" 
                        Value="cliente"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/mantenedorreserva.aspx" Text="reserva" 
                        Value="reserva"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/mantenedorvehiculo.aspx" Text="vehiculo" 
                        Value="vehiculo"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="reporte" Value="reporte">
                    <asp:MenuItem NavigateUrl="~/reportecliente.aspx" Text="listado cliente" 
                        Value="listado cliente"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportereserva.aspx" Text="listado reserva" 
                        Value="listado reserva"></asp:MenuItem>
                    <asp:MenuItem Text="listado vehiculo" Value="listado vehiculo" 
                        NavigateUrl="~/reportevehiculo.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="buscar" Value="buscar">
                    <asp:MenuItem NavigateUrl="~/buscarcliente.aspx" Text="cliente" Value="cliente">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/buscaridreserva.aspx" Text="reservapor_id" 
                        Value="reservapor_id"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/buscarpatente.aspx" Text="vehiculo" 
                        Value="vehiculo"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
                    </td>
                    <td>
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" 
            LogoutPageUrl="~/rentarvehiculo.aspx" BorderStyle="Solid" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </asp:Content>


