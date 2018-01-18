<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTRAC.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
   	<title>Home</title>
  <meta charset="utf-8"> 
  <meta name="Viewport" content="Width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/nestilo.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.css"
  <link href="https://fonts.googleapis.com/css?family=Hind+Siliguri" rel="stylesheet">
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
  </head>
  <br />



<section class="conte-galeria">
<div class="flexslider">
  <ul class="slides">
    <li>
     <img src="img/auto1.jpg" />
    </li> 
    <li>
      <img src="img/auto2.jpg" />
    </li>
     <li>
     <img src="img/auto3.jpg" />
    </li>
     <li>
      <img src="img/auto4.jpg" />
    </li>
  </ul>
</div>
</section>
<br />



        <%--/*pendientes*/--%>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>

<script type="text/javascrip" src="js/jquery.js"></script>
<script src="js/jquery.flexslider.js"></script>

<script type="text/javascript" charset="utf-8">
    $(window).load(function () {
        $('.flexslider').flexslider();
    });
</script>
           
</asp:Content>

