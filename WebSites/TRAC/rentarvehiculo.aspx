<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTRAC.master" AutoEventWireup="true" CodeFile="rentarvehiculo.aspx.cs" Inherits="rentarvehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         body{ background-color:#A9BCF5; }
        .style1
        {
            width: 100%;
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
        .style13
        {
            width: 220px;
            height: 170px;
            float: left;
        }
        .style14
        {
            width: 220px;
            height: 170px;
        }
        .style15
        {
            width: 220px;
            height: 170px;
            float: left;
        }
        .style16
        {
            width: 220px;
            height: 170px;
        }
        .style17
        {
            width: 223px;
        }
        .style18
        {
            width: 298px;
        }
        .style19
        {
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <br />
    <br />
&nbsp; <br />
  
    &nbsp;
    <table class="style1">
        <tr>
            <td class="style17">
  
    <img alt="" class="style15" src="img/sail.jpg" /></td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
                <img alt="" class="style14" src="img/rio5.jpg" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
    <img alt="" class="style16" src="img/mitsubishi-l200-galería.jpg" /></td>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
    <img alt="" class="style13" src="img/dimax.jpg" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
   

  <br />
    <table class="style1">
        <tr>
            <td class="style2">
                 &nbsp   &nbsp   &nbsp   &nbsp  &nbsp;</td>
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
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FECHA RETIRO</td>
            <td class="style3">
                &nbsp;</td>
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
                &nbsp;</td>
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
                <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="123px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FECHA DE ENTREGA</td>
            <td class="style3">
                &nbsp;</td>
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
                &nbsp;</td>
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
    <asp:Button ID="Button1" runat="server" Height="61px" Text="pagar" 
        Width="112px" />
   <br />
    <br />

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>

