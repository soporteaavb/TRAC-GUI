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
    EmptyDataText="No hay registros de datos para mostrar.">
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_PATENTE" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ID_PATENTE:
            <asp:Label ID="ID_PATENTELabel1" runat="server" 
                Text='<%# Eval("ID_PATENTE") %>' />
            <br />
            MARCA:
            <asp:TextBox ID="MARCATextBox" runat="server" Text='<%# Bind("MARCA") %>' />
            <br />
            MODELO:
            <asp:TextBox ID="MODELOTextBox" runat="server" Text='<%# Bind("MODELO") %>' />
            <br />
            COLOR:
            <asp:TextBox ID="COLORTextBox" runat="server" Text='<%# Bind("COLOR") %>' />
            <br />
            NUMERO_MOTOR:
            <asp:TextBox ID="NUMERO_MOTORTextBox" runat="server" 
                Text='<%# Bind("NUMERO_MOTOR") %>' />
            <br />
            NUMERO_CHASIS:
            <asp:TextBox ID="NUMERO_CHASISTextBox" runat="server" 
                Text='<%# Bind("NUMERO_CHASIS") %>' />
            <br />
            TIPO_VEHICULO:
            <asp:TextBox ID="TIPO_VEHICULOTextBox" runat="server" 
                Text='<%# Bind("TIPO_VEHICULO") %>' />
            <br />
            AÑO:
            <asp:TextBox ID="AÑOTextBox" runat="server" Text='<%# Bind("AÑO") %>' />
            <br />
            ID_ESTADO:
            <asp:TextBox ID="ID_ESTADOTextBox" runat="server" 
                Text='<%# Bind("ID_ESTADO") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_PATENTE:
            <asp:TextBox ID="ID_PATENTETextBox" runat="server" 
                Text='<%# Bind("ID_PATENTE") %>' />
            <br />
            MARCA:
            <asp:TextBox ID="MARCATextBox" runat="server" Text='<%# Bind("MARCA") %>' />
            <br />
            MODELO:
            <asp:TextBox ID="MODELOTextBox" runat="server" Text='<%# Bind("MODELO") %>' />
            <br />
            COLOR:
            <asp:TextBox ID="COLORTextBox" runat="server" Text='<%# Bind("COLOR") %>' />
            <br />
            NUMERO_MOTOR:
            <asp:TextBox ID="NUMERO_MOTORTextBox" runat="server" 
                Text='<%# Bind("NUMERO_MOTOR") %>' />
            <br />
            NUMERO_CHASIS:
            <asp:TextBox ID="NUMERO_CHASISTextBox" runat="server" 
                Text='<%# Bind("NUMERO_CHASIS") %>' />
            <br />
            TIPO_VEHICULO:
            <asp:TextBox ID="TIPO_VEHICULOTextBox" runat="server" 
                Text='<%# Bind("TIPO_VEHICULO") %>' />
            <br />
            AÑO:
            <asp:TextBox ID="AÑOTextBox" runat="server" Text='<%# Bind("AÑO") %>' />
            <br />
            ID_ESTADO:
            <asp:TextBox ID="ID_ESTADOTextBox" runat="server" 
                Text='<%# Bind("ID_ESTADO") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PATENTE:
            <asp:Label ID="ID_PATENTELabel" runat="server" 
                Text='<%# Eval("ID_PATENTE") %>' />
            <br />
            MARCA:
            <asp:Label ID="MARCALabel" runat="server" Text='<%# Bind("MARCA") %>' />
            <br />
            MODELO:
            <asp:Label ID="MODELOLabel" runat="server" Text='<%# Bind("MODELO") %>' />
            <br />
            COLOR:
            <asp:Label ID="COLORLabel" runat="server" Text='<%# Bind("COLOR") %>' />
            <br />
            NUMERO_MOTOR:
            <asp:Label ID="NUMERO_MOTORLabel" runat="server" 
                Text='<%# Bind("NUMERO_MOTOR") %>' />
            <br />
            NUMERO_CHASIS:
            <asp:Label ID="NUMERO_CHASISLabel" runat="server" 
                Text='<%# Bind("NUMERO_CHASIS") %>' />
            <br />
            TIPO_VEHICULO:
            <asp:Label ID="TIPO_VEHICULOLabel" runat="server" 
                Text='<%# Bind("TIPO_VEHICULO") %>' />
            <br />
            AÑO:
            <asp:Label ID="AÑOLabel" runat="server" Text='<%# Bind("AÑO") %>' />
            <br />
            ID_ESTADO:
            <asp:Label ID="ID_ESTADOLabel" runat="server" Text='<%# Bind("ID_ESTADO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
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

