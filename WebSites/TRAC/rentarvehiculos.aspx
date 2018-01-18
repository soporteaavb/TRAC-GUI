<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTRAC.master" AutoEventWireup="true" CodeFile="rentarvehiculos.aspx.cs" Inherits="rentarvehiculos" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         body{ background-color:#A9BCF5; }
        .style1
        {
            width: 100%;
            height: 244px;
        }
        .style2
        {
            width: 230px;
        }
        .style3
        {
            width: 185px;
        }
        .style4
        {
            width: 234px;
        }
        .style5
        {
            width: 296px;
        }
        .style8
        {
            width: 209px;
            height: 224px;
        }
        .style9
        {
            width: 275px;
            height: 224px;
        }
        .style10
        {
            width: 245px;
            height: 224px;
        }
        .style12
        {
            width: 209px;
            height: 151px;
        }
        .style13
        {
            width: 275px;
            height: 151px;
        }
        .style14
        {
            width: 245px;
            height: 151px;
        }
        .style15
        {
            height: 151px;
        }
        .style19
        {
            width: 259px;
            height: 206px;
        }
        .style21
        {
           width: 259px;
            height: 206px;
        }
        .style22
        {
            width: 259px;
            height: 206px;
        }
        .style23
        {
            height: 224px;
        }
        .style24
        {
            width: 259px;
            height: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <br />
    <br />
    
    <br />


    <table class="style1">
        <tr>
            <td class="style8">
                <img alt="" class="style19" src="images/demo/mitsubishi-l200-galería.jpg" /></td>
            <td class="style9">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="SELECCIONAR" />
            </td>
            <td class="style10">
                <img alt="" class="style24" src="images/demo/dimax.jpg" /></td>
            <td class="style23">
                <asp:CheckBox ID="CheckBox3" runat="server" Text="SELECCIONAR" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                <img alt="" class="style21" src="images/demo/rio5.jpg" /></td>
            <td class="style13">
                <asp:CheckBox ID="CheckBox2" runat="server" Text="SELECCIONAR" />
            </td>
            <td class="style14">
                <img alt="" class="style22" src="images/demo/sail.jpg" /></td>
            <td class="style15">
                <asp:CheckBox ID="CheckBox4" runat="server" Text="SELECCIONAR" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
   

  <br />
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                UBICACION DE RETIRO</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style4">
                RUT</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FECHA RETIRO</td>
            <td class="style3">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                NOMBRE
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                HORA RETIRO</td>
            <td class="style3">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                APELLIDO</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;UBICACION DE ENTREGA</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style4">
                DIRECCION</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FECHA DE ENTREGA</td>
            <td class="style3">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                CIUDAD</td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                HORA ENTREGA</td>
            <td class="style3">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                TELEFONO</td>
            <td class="style5">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                EMAIL</td>
            <td class="style5">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                TIPO-LICENCIA</td>
            <td class="style5">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
   <br />
   <br />
    <br />

    </asp:Content>

