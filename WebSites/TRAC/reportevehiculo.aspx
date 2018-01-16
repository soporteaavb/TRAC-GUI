<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="reportevehiculo.aspx.cs" Inherits="reportevehiculo" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    Reporte vehiculo</p>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Colección)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="960px">
    <LocalReport ReportPath="Report3.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
    SelectMethod="GetData" TypeName="TRACDataSetTableAdapters.VEHICULOTableAdapter">
</asp:ObjectDataSource>
<p>
</p>
<p>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server">
    </asp:ObjectDataSource>
</p>
<p>
</p>
</asp:Content>

