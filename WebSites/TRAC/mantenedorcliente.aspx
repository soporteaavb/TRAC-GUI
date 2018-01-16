<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="mantenedorcliente.aspx.cs" Inherits="mantenedorcliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="RUT" DataSourceID="SqlDataSource1" 
    EmptyDataText="No hay registros de datos para mostrar.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [CLIENTE] WHERE [RUT] = @RUT" 
    InsertCommand="INSERT INTO [CLIENTE] ([RUT], [NOMBRE], [APELLIDO], [DIRECCION], [CIUDAD], [TELEFONO], [EMAIL], [TIPO_LICENCIA]) VALUES (@RUT, @NOMBRE, @APELLIDO, @DIRECCION, @CIUDAD, @TELEFONO, @EMAIL, @TIPO_LICENCIA)" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT [RUT], [NOMBRE], [APELLIDO], [DIRECCION], [CIUDAD], [TELEFONO], [EMAIL], [TIPO_LICENCIA] FROM [CLIENTE]" 
    UpdateCommand="UPDATE [CLIENTE] SET [NOMBRE] = @NOMBRE, [APELLIDO] = @APELLIDO, [DIRECCION] = @DIRECCION, [CIUDAD] = @CIUDAD, [TELEFONO] = @TELEFONO, [EMAIL] = @EMAIL, [TIPO_LICENCIA] = @TIPO_LICENCIA WHERE [RUT] = @RUT">
    <DeleteParameters>
        <asp:Parameter Name="RUT" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="RUT" Type="String" />
        <asp:Parameter Name="NOMBRE" Type="String" />
        <asp:Parameter Name="APELLIDO" Type="String" />
        <asp:Parameter Name="DIRECCION" Type="String" />
        <asp:Parameter Name="CIUDAD" Type="String" />
        <asp:Parameter Name="TELEFONO" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TIPO_LICENCIA" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NOMBRE" Type="String" />
        <asp:Parameter Name="APELLIDO" Type="String" />
        <asp:Parameter Name="DIRECCION" Type="String" />
        <asp:Parameter Name="CIUDAD" Type="String" />
        <asp:Parameter Name="TELEFONO" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TIPO_LICENCIA" Type="String" />
        <asp:Parameter Name="RUT" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
    &nbsp;</p>
<p>
</p>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="RUT" 
    DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        RUT:
        <asp:Label ID="RUTLabel1" runat="server" Text='<%# Eval("RUT") %>' />
        <br />
        NOMBRE:
        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
        <br />
        APELLIDO:
        <asp:TextBox ID="APELLIDOTextBox" runat="server" 
            Text='<%# Bind("APELLIDO") %>' />
        <br />
        DIRECCION:
        <asp:TextBox ID="DIRECCIONTextBox" runat="server" 
            Text='<%# Bind("DIRECCION") %>' />
        <br />
        CIUDAD:
        <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
        <br />
        TELEFONO:
        <asp:TextBox ID="TELEFONOTextBox" runat="server" 
            Text='<%# Bind("TELEFONO") %>' />
        <br />
        EMAIL:
        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
        <br />
        TIPO_LICENCIA:
        <asp:TextBox ID="TIPO_LICENCIATextBox" runat="server" 
            Text='<%# Bind("TIPO_LICENCIA") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Actualizar" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </EditItemTemplate>
    <InsertItemTemplate>
        RUT:
        <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
        <br />
        NOMBRE:
        <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
        <br />
        APELLIDO:
        <asp:TextBox ID="APELLIDOTextBox" runat="server" 
            Text='<%# Bind("APELLIDO") %>' />
        <br />
        DIRECCION:
        <asp:TextBox ID="DIRECCIONTextBox" runat="server" 
            Text='<%# Bind("DIRECCION") %>' />
        <br />
        CIUDAD:
        <asp:TextBox ID="CIUDADTextBox" runat="server" Text='<%# Bind("CIUDAD") %>' />
        <br />
        TELEFONO:
        <asp:TextBox ID="TELEFONOTextBox" runat="server" 
            Text='<%# Bind("TELEFONO") %>' />
        <br />
        EMAIL:
        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
        <br />
        TIPO_LICENCIA:
        <asp:TextBox ID="TIPO_LICENCIATextBox" runat="server" 
            Text='<%# Bind("TIPO_LICENCIA") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insertar" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </InsertItemTemplate>
    <ItemTemplate>
        RUT:
        <asp:Label ID="RUTLabel" runat="server" Text='<%# Eval("RUT") %>' />
        <br />
        NOMBRE:
        <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Bind("NOMBRE") %>' />
        <br />
        APELLIDO:
        <asp:Label ID="APELLIDOLabel" runat="server" Text='<%# Bind("APELLIDO") %>' />
        <br />
        DIRECCION:
        <asp:Label ID="DIRECCIONLabel" runat="server" Text='<%# Bind("DIRECCION") %>' />
        <br />
        CIUDAD:
        <asp:Label ID="CIUDADLabel" runat="server" Text='<%# Bind("CIUDAD") %>' />
        <br />
        TELEFONO:
        <asp:Label ID="TELEFONOLabel" runat="server" Text='<%# Bind("TELEFONO") %>' />
        <br />
        EMAIL:
        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
        <br />
        TIPO_LICENCIA:
        <asp:Label ID="TIPO_LICENCIALabel" runat="server" 
            Text='<%# Bind("TIPO_LICENCIA") %>' />
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
</asp:Content>

