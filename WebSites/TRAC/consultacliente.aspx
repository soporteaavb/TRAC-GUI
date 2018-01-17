<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="consultacliente.aspx.cs" Inherits="consultacliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<table style="width:100%;">
    <tr>
        <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RUT" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                CellSpacing="2" ForeColor="Black">
        <Columns>
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
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>
</p>
<p>
    &nbsp;</p>
<p>
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [CLIENTE]"></asp:SqlDataSource>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

