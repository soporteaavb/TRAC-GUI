<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="reportereserva.aspx.cs" Inherits="reportereserva" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
&nbsp;&nbsp; Reporte&nbsp; Reserva</p>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Colección)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="839px">
    <LocalReport ReportPath="Report2.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetData" TypeName="TRACDataSetTableAdapters.RESERVATableAdapter">
</asp:ObjectDataSource>
<p>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</p>
</asp:Content>

