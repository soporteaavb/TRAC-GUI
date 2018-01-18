<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTRAC.master" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
        h1{ text-align: center; color: Black; }
        body{ background-color:#A9BCF5; }
        .style1
        {
            width: 73px;
        }
    .txt
    {
        border:1px solid #d1c7ac;
        color: Blue;
        padding:3px;
        margin-right:4px;
        margin-bottom:4px;
        font-family:tahoma, arial, sans-serif;
        text-align: center;
    }
    .btn
    {
        background-color:Gray;
        border:1px solid #FFFFFF;
        font-family: Arial Black;
        font-size:14px;
        text-align:center;
        height: 40px;
        width: 100px;
    }
        .style2
        {
            color: #0B3B0B;
            width: 73px;
        }
        .style3
        {
            width: 359px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 


<h1><strong>Contacto</strong></h1>
   
    <div>
    
        <table style=" text-align:left; margin:auto">
            <tr>
                <td class="style2">
                    <strong>Nombre:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                    </td>
                
            </tr>
            <tr>
                <td class="style2">
                    <strong>Apellido:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txtapellido" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td class="style2">
                    <strong>Direccion:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="Textdireccion" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="style2">
                    <strong>Ciudad:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="Texciudad" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td class="style2">
                    <strong>Telefono:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="Textelefono" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="style2">
                    <strong>Correo:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="Texcorreo" runat="server" CssClass="txt" Width="340px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <strong>Mensaje:</strong></td>
                <td class="style3">
                    <asp:TextBox ID="txtmensaje" runat="server" Height="340px" TextMode="MultiLine" 
                        Width="340px" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtmensaje" ErrorMessage="*Ingrese Mensaje" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lblaviso" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
   <%-- </form>--%>
<%--</body>--%>
<%--</html>--%>



</asp:Content>




