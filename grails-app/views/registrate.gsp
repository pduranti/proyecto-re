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
}
.style7 {color: #BE2327}
.style9 {font-size: 12px}
.style10 {color: #BE2327; font-size: 12px; }
-->
</style>

 <script type="text/javascript" src="./js/jquery.js"></script>
 <link rel="stylesheet" href="./css/extra.css" />
 
<body>
<table width="1389" height="274" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="13%" height="32" background="./images/franja-roja.jpg">&nbsp;</td>
    <td width="31%" rowspan="2" valign="top"><a href="http://www.viajerosunidos.com.ar/proyectore/home.html"><img src="./images/logo.jpg" alt="proyecto re" width="458" height="274" border="0"></a>
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
        <td width="318"><div align="right"><img src="./images/facebook-twitter.jpg" alt="facebook twitter proyecto re" width="178" height="48"></div></td>
      </tr>
    </tbody></table></td>
  </tr>
</tbody></table>

 <g:render template="/templates/category_nav" />

    <p>
     <img src="./images/acerca-de.jpg" alt="proyecto re la marca editora" width="163" height="38"><br>
     <img src="./images/subi-tu-foto-menu.jpg" alt="la marca editora andy marquine" width="163" height="38">
    </p>
    </td>
    <td width="723" valign="top"><p><br>
      <img src="./images/subi-tu-foto-title.jpg" alt="proyecto re" width="136" height="23">&nbsp;&nbsp;&nbsp;<img src="./images/linea.jpg" alt="proyecto re" width="403" height="7"></p>
      <table width="386" height="379" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td width="386" height="36"><img src="./images/form-top.jpg" width="386" height="36"></td>
        </tr>
        <tr>
          <td height="33" background="./images/form-back.jpg"><div align="center"><a href="http://www.viajerosunidos.com.ar/proyectore/subi-tu-foto.html"><img src="./images/paso-1-off.jpg" width="80" height="26" border="0"></a>  &nbsp;<a href="./images/subi-tu-foto2.html"><img src="./images/paso-2-on.jpg" width="79" height="26" border="0"></a><br>
            <img src="./images/linea.png" width="341" height="4"></div></td>
        </tr>
        <tr>
          <td height="170" background="./images/form-back.jpg">
          
          <g:if test="${usuario?.errors}">
          			<div class="errores">
						<div class="ch-cone"></div>
						<div class="ch-helper-content">
							<p class="error title">Oops! algo anduvo mal, verifica los errores.</p>
							<p><g:each in="${usuario?.errors?.getFieldErrors('nombre')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${usuario?.errors?.getFieldErrors('ciudad')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${usuario?.errors?.getFieldErrors('email')}" var="error"> ${error.defaultMessage}</g:each></p>
						</div>
					</div>
		  </g:if>
          <g:form id="userForm" name="userForm" method="post" action="registratePost">
            <p>
              <label></label>
            </p>
            <table width="272" border="0" align="center" cellpadding="0" cellspacing="0">
              <tbody><tr>
                <td width="272"><p>
                  <label></label>
                <strong><span class="style3 style5">Nombre y Apellido </span><span class="style7">(*)</span><span class="style3 style5"><br> 
                  <label>
                      <input name="nombre" type="text" class="style6" id="nombre" size="40" value="${usuario?.nombre}">
                      </label>
                      
                      <br>
                      <br>
                      Ciudad / País  </span><span class="style7">(*)</span>
				 
                      <span class="style3 style5"><br>
                      <label>
                      	<input name="ciudad" type="text" class="style6" id="ciudad" size="40" value="${usuerio?.ciudad}">
                      </label>
                      
                      <br>
                      <br>
                      </span></strong><strong><span class="style3 style5">Mail  </span><span class="style7">(*)</span><span class="style3 style5"><br>
                      <label>
                      <input name="email" type="text" class="style6" id="email" size="40" value="${usuario?.email }">
                      </label>
                      
                      <br>
                      </span></strong><br>
                  <label></label>
                  <span class="style10">(*)</span> <span class="style3 style5 style9">Datos obligatorios  </span>
                  <p></p>
                  
                  <a id="submit" href="">
	                  <img src="./images/finalizar.jpg" alt="proyecto re la marca editora" width="126" height="37" border="0">
                  </a>
                  </td>
              </tr>
            </tbody></table>
          </g:form>
          </td>
        </tr>
        <tr>
          <td height="26"><img src="./images/form-bottom.jpg" width="386" height="26"></td>
        </tr>
      </tbody></table>
      <p>&nbsp;</p>
      <p class="style5">&nbsp;</p>
    <p class="style5"><br>  
      <br>
    </p>    </td>
  </tr>
</tbody></table>

<script>

$("#submit").click(function(event){
	event.preventDefault();
	document.forms["userForm"].submit();
})
</script>

</body></html>