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
    EmptyDataText="No hay registros de datos para mostrar.">
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
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_RESERVA" 
    DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ID_RESERVA:
        <asp:Label ID="ID_RESERVALabel1" runat="server" 
            Text='<%# Eval("ID_RESERVA") %>' />
        <br />
        KM_INICIAL:
        <asp:TextBox ID="KM_INICIALTextBox" runat="server" 
            Text='<%# Bind("KM_INICIAL") %>' />
        <br />
        KM_FINAL:
        <asp:TextBox ID="KM_FINALTextBox" runat="server" 
            Text='<%# Bind("KM_FINAL") %>' />
        <br />
        FECHA_RETIRO:
        <asp:TextBox ID="FECHA_RETIROTextBox" runat="server" 
            Text='<%# Bind("FECHA_RETIRO") %>' />
        <br />
        FECHA_ENTREGA:
        <asp:TextBox ID="FECHA_ENTREGATextBox" runat="server" 
            Text='<%# Bind("FECHA_ENTREGA") %>' />
        <br />
        LUGAR_RETIRO:
        <asp:TextBox ID="LUGAR_RETIROTextBox" runat="server" 
            Text='<%# Bind("LUGAR_RETIRO") %>' />
        <br />
        LUGAR_ENTREGA:
        <asp:TextBox ID="LUGAR_ENTREGATextBox" runat="server" 
            Text='<%# Bind("LUGAR_ENTREGA") %>' />
        <br />
        VALOR_RESERVA:
        <asp:TextBox ID="VALOR_RESERVATextBox" runat="server" 
            Text='<%# Bind("VALOR_RESERVA") %>' />
        <br />
        RUT_CLIENTE:
        <asp:TextBox ID="RUT_CLIENTETextBox" runat="server" 
            Text='<%# Bind("RUT_CLIENTE") %>' />
        <br />
        ID_PATENTE:
        <asp:TextBox ID="ID_PATENTETextBox" runat="server" 
            Text='<%# Bind("ID_PATENTE") %>' />
        <br />
        ID_SERVICIO:
        <asp:TextBox ID="ID_SERVICIOTextBox" runat="server" 
            Text='<%# Bind("ID_SERVICIO") %>' />
        <br />
        NUMERO_TRANSACCION:
        <asp:TextBox ID="NUMERO_TRANSACCIONTextBox" runat="server" 
            Text='<%# Bind("NUMERO_TRANSACCION") %>' />
        <br />
        RUT_ADMIINISTRADOR:
        <asp:TextBox ID="RUT_ADMIINISTRADORTextBox" runat="server" 
            Text='<%# Bind("RUT_ADMIINISTRADOR") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Actualizar" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ID_RESERVA:
        <asp:TextBox ID="ID_RESERVATextBox" runat="server" 
            Text='<%# Bind("ID_RESERVA") %>' />
        <br />
        KM_INICIAL:
        <asp:TextBox ID="KM_INICIALTextBox" runat="server" 
            Text='<%# Bind("KM_INICIAL") %>' />
        <br />
        KM_FINAL:
        <asp:TextBox ID="KM_FINALTextBox" runat="server" 
            Text='<%# Bind("KM_FINAL") %>' />
        <br />
        FECHA_RETIRO:
        <asp:TextBox ID="FECHA_RETIROTextBox" runat="server" 
            Text='<%# Bind("FECHA_RETIRO") %>' />
        <br />
        FECHA_ENTREGA:
        <asp:TextBox ID="FECHA_ENTREGATextBox" runat="server" 
            Text='<%# Bind("FECHA_ENTREGA") %>' />
        <br />
        LUGAR_RETIRO:
        <asp:TextBox ID="LUGAR_RETIROTextBox" runat="server" 
            Text='<%# Bind("LUGAR_RETIRO") %>' />
        <br />
        LUGAR_ENTREGA:
        <asp:TextBox ID="LUGAR_ENTREGATextBox" runat="server" 
            Text='<%# Bind("LUGAR_ENTREGA") %>' />
        <br />
        VALOR_RESERVA:
        <asp:TextBox ID="VALOR_RESERVATextBox" runat="server" 
            Text='<%# Bind("VALOR_RESERVA") %>' />
        <br />
        RUT_CLIENTE:
        <asp:TextBox ID="RUT_CLIENTETextBox" runat="server" 
            Text='<%# Bind("RUT_CLIENTE") %>' />
        <br />
        ID_PATENTE:
        <asp:TextBox ID="ID_PATENTETextBox" runat="server" 
            Text='<%# Bind("ID_PATENTE") %>' />
        <br />
        ID_SERVICIO:
        <asp:TextBox ID="ID_SERVICIOTextBox" runat="server" 
            Text='<%# Bind("ID_SERVICIO") %>' />
        <br />
        NUMERO_TRANSACCION:
        <asp:TextBox ID="NUMERO_TRANSACCIONTextBox" runat="server" 
            Text='<%# Bind("NUMERO_TRANSACCION") %>' />
        <br />
        RUT_ADMIINISTRADOR:
        <asp:TextBox ID="RUT_ADMIINISTRADORTextBox" runat="server" 
            Text='<%# Bind("RUT_ADMIINISTRADOR") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insertar" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </InsertItemTemplate>
    <ItemTemplate>
        ID_RESERVA:
        <asp:Label ID="ID_RESERVALabel" runat="server" 
            Text='<%# Eval("ID_RESERVA") %>' />
        <br />
        KM_INICIAL:
        <asp:Label ID="KM_INICIALLabel" runat="server" 
            Text='<%# Bind("KM_INICIAL") %>' />
        <br />
        KM_FINAL:
        <asp:Label ID="KM_FINALLabel" runat="server" Text='<%# Bind("KM_FINAL") %>' />
        <br />
        FECHA_RETIRO:
        <asp:Label ID="FECHA_RETIROLabel" runat="server" 
            Text='<%# Bind("FECHA_RETIRO") %>' />
        <br />
        FECHA_ENTREGA:
        <asp:Label ID="FECHA_ENTREGALabel" runat="server" 
            Text='<%# Bind("FECHA_ENTREGA") %>' />
        <br />
        LUGAR_RETIRO:
        <asp:Label ID="LUGAR_RETIROLabel" runat="server" 
            Text='<%# Bind("LUGAR_RETIRO") %>' />
        <br />
        LUGAR_ENTREGA:
        <asp:Label ID="LUGAR_ENTREGALabel" runat="server" 
            Text='<%# Bind("LUGAR_ENTREGA") %>' />
        <br />
        VALOR_RESERVA:
        <asp:Label ID="VALOR_RESERVALabel" runat="server" 
            Text='<%# Bind("VALOR_RESERVA") %>' />
        <br />
        RUT_CLIENTE:
        <asp:Label ID="RUT_CLIENTELabel" runat="server" 
            Text='<%# Bind("RUT_CLIENTE") %>' />
        <br />
        ID_PATENTE:
        <asp:Label ID="ID_PATENTELabel" runat="server" 
            Text='<%# Bind("ID_PATENTE") %>' />
        <br />
        ID_SERVICIO:
        <asp:Label ID="ID_SERVICIOLabel" runat="server" 
            Text='<%# Bind("ID_SERVICIO") %>' />
        <br />
        NUMERO_TRANSACCION:
        <asp:Label ID="NUMERO_TRANSACCIONLabel" runat="server" 
            Text='<%# Bind("NUMERO_TRANSACCION") %>' />
        <br />
        RUT_ADMIINISTRADOR:
        <asp:Label ID="RUT_ADMIINISTRADORLabel" runat="server" 
            Text='<%# Bind("RUT_ADMIINISTRADOR") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="Editar" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="Eliminar" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="Nuevo" />
    </ItemTemplate>
</asp:FormView>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

