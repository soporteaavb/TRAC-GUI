<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="buscarpatente.aspx.cs" Inherits="buscarpatente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table style="width:100%;">
        <tr>
            <td style="width: 140px">
                BUSCAR POR PATENTE</td>
            <td style="width: 124px">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
        <asp:Button ID="Button2" runat="server" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ID_PATENTE" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px" CellPadding="4" ForeColor="Red" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
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
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
            </td>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [VEHICULO] WHERE ([ID_PATENTE] = @ID_PATENTE)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="ID_PATENTE" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>

