<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0063)http://www.viajerosunidos.com.ar/proyectore/subi-tu-foto-2.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>.:: SUBI TU FOTO :: PROYECTO RE ::.</title>
<style type="text/css">
<!--
body {
	background-color: #F3EFEB;
}
#Layer1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 758px;
	top: 71px;
}
.style2 {
	font-size: 11px;
	font-family: Arial, Helvetica, sans-serif;
}
.style3 {color: #6F6561}
.style4 {color: #BE2D29}
.style5 {font-family: Arial, Helvetica, sans-serif}
.style6 {
	color: #6F6561;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	text-decoration:none;
}
.h1 {
    color: #6F6561;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 28px;
	text-decoration:none;
}
.style7 {color: #BE2327}
.style9 {font-size: 12px}
.style10 {color: #BE2327; font-size: 12px; }
-->
</style>

 <script type="text/javascript" src="./js/jquery.js"></script>
 <script type="text/javascript" src="./js/galleria/galleria-1.2.7.min.js"></script>
 <script type="text/javascript" src="./js/galleria/themes/classic/galleria.classic.min.js"></script>
 
 <link rel="stylesheet" href="./css/extra.css" />
 <link rel="stylesheet" href="./js/galleria/themes/classic/galleria.classic.css" />
 
<body>
<table width="1389" height="274" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="13%" height="32" background="./images/franja-roja.jpg">&nbsp;</td>
    <td width="31%" rowspan="2" valign="top"><a href="http://www.proyectore.net"><img src="./images/logo.jpg" alt="proyecto re" width="458" height="274" border="0"></a>
    </td><td width="56%" background="./images/franja-roja.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="242">&nbsp;</td>
    <td valign="top"><table width="319" height="149" border="0" cellpadding="0" cellspacing="0" background="./images/la-marca-andy-marquine.jpg">
      <tbody><tr>
        <td width="216" height="149"><div align="right"><strong><span class="style2"><span class="style3">DE LOS EDITORES DE</span><br>
            <span class="style4">PROYECTO CARTELE</span><br>
            <span class="style3">UNA IDEA DE </span><br>
          <span class="style4">ANDY MARQUINE</span></span></strong></div></td>
        <td width="103"><br>
          &nbsp;&nbsp;&nbsp;<a href="http://www.lamarcaeditora.com/homeindex.php?lgr=arg" target="_blank"><img src="./images/la-marca-editora.png" alt="la marca editora" width="67" height="92" border="0"></a></td>
      </tr>
    </tbody></table>
    <br>
    <table width="318" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="318">
            <div align="right">
		<img src="./images/seguinos.jpg" alt="facebook proyecto re" width="81" height="48">
	        <a href="http://www.facebook.com/ProyectoRe" target="_blank">
	           <img src="./images/facebook-proyectore.jpg" alt="facebook proyecto re" width="48" height="48">
	        </a>
	        <a href="https://twitter.com/proyecto_RE" target="_blank">
	           <img src="./images/twitter-proyectore.jpg" alt="twitter proyecto re" width="48" height="48">
	        </a>
             </div>
        </td>
      </tr>
    </tbody></table></td>
  </tr>
</tbody></table>

 <g:render template="/templates/category_nav" />

    <p>
      <img src="./images/acerca-de.jpg" alt="proyecto re la marca editora" width="163" height="38"><br>

      <g:link url="/subir-foto">
        <img src="./images/subi-tu-foto-menu.jpg" alt="la marca editora andy marquine" width="163" height="38">
      </g:link>
    </p>
    </td>
    
    <td valign="top"><p><br>
      <h1 class="h1">${categ.capitalize()}</h1>
      
       <g:if test="${images}">
         <div id="galleria" style="width: 723px; height: 600px; ">
             <g:each in="${images}">
                <img src="${it}">
             </g:each>
          </div>
        <script>
            Galleria.run('#galleria');
        </script>
       </g:if>
       <br>
       <br>
    </td>
  </tr>
</tbody>
</table>


</body></html>