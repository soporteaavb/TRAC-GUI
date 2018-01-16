<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="reportecliente.aspx.cs" Inherits="reportecliente" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;reporte cliente<br />
</p>
<p>
</p>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Colección)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="954px">
    <LocalReport ReportPath="Report1.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<p>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="TRACDataSetTableAdapters.CLIENTETableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_RUT" Type="String" />
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
            <asp:Parameter Name="Original_RUT" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<p>
</p>
</asp:Content>

