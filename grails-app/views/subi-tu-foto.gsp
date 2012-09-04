<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0061)http://www.viajerosunidos.com.ar/proyectore/subi-tu-foto.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</meta>

<title>.:: SUBI TU FOTO :: PROYECTO RE ::.</title>
<style type="text/css">
<!--
body {
	background-color: #F4EFE9;
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
.style7 {
	color: #BE2327;
	font-size: 8pt;
}
.style9 {font-size: 12px}
.style10 {color: #BE2327; font-size: 12px; }

.styleAdjuntarFoto {
  background-image: white url('./images/adjuntar-foto.jpg') no-repeat top;
  width: 216px;
  height: 69px;
  font-size: 18px;
}

-->
</style>
 <script type="text/javascript" src="./js/jquery.js"></script>
 <script type="text/javascript" src="./js/jQuery-fileinput.js"></script>
 <link rel="stylesheet" href="./css/extra.css" />
</head>
<body style="background-color: #F3EFEB">

<table width="1389" height="274" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="13%" height="32" background="./images/franja-roja.jpg">&nbsp;</td>
    <td width="31%" rowspan="2" valign="top"><img src="./images/logo.jpg" alt="proyecto re" width="458" height="274">
    </td><td width="56%" background="./images/franja-roja.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="242">&nbsp;</td>
    <td valign="middle"><table width="319" height="149" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td width="226" height="149"><div align="right"><strong><span class="style2"><span class="style3">DE LOS EDITORES DE</span><br>
            <span class="style4">PROYECTO CARTELE</span><br>
            <span class="style3">UNA IDEA DE </span><br>
          <span class="style4">ANDY MARQUINE</span></span></strong></div></td>
        <td width="93"><br>
          &nbsp;&nbsp;&nbsp;<a href="http://www.lamarcaeditora.com/homeindex.php?lgr=arg" target="_blank"><img src="./images/la-marca-editora.png" alt="la marca editora" width="67" height="92" border="0"></a></td>
      </tr>
    </tbody></table>
      <img src="./images/linea-2.jpeg" alt="proyectoRE" width="308" height="8">
   </td>  
  </tr>
    </tbody></table>
    <br>
    
    <table width="971" border="0" align="center" cellspacing="0" cellpadding="0">
      <tbody>
      <tr>
	      <td valign="top">
	      <table width="780" height="22" border="0" cellpadding="0" cellspacing="0">
	      <tbody><tr>
	        <td>
	          <g:link url="/acerca-de" class="style6">
	        	<img src="./images/boton-acerca-de.png" alt="proyectoRE" width="134" height="32"/> 
	          </g:link>
	        <img src="./images/boton-contacto.png" alt="proyectoRE" width="134" height="32"> 
	        <img src="./images/siguenos.png" alt="proyectoRE" width="83" height="32"> 
	        <a href="http://www.facebook.com/pages/proyectoRE/357558554296576" target="_blank" class="no-line">
	        	<img src="./images/facebook-proyectore.jpg" alt="proyectoRE" width="45" height="48"> 
		</a>
		<a href="https://twitter.com/proyecto_RE" target="_blank" class="no-line">
	        	<img src="./images/twitter-proyectore.jpg" alt="proyectoRE" width="48" height="48">
		</a>
	        <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FproyectoRE%2F357558554296576&amp;send=false&amp;layout=standard&amp;width=450&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:30px;" allowTransparency="true"></iframe>
	        </td>
	        
	      </tr>
	    </tbody>
	    </table>





 <g:render template="/templates/category_nav" />

  </td>
    <td width="723" valign="top"><p><br>
      <img src="./images/subi-tu-foto-title.jpg" alt="proyecto re" width="136" height="23">&nbsp;&nbsp;&nbsp;<img src="./images/linea.jpg" alt="proyecto re" width="403" height="7"></p>
      <table width="386" height="436" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td width="386" height="36"><img src="./images/form-top.jpg" width="386" height="36"></td>
        </tr>
        <tr>
          <td height="33" background="./images/form-back.jpg">
            <div align="center">
            <img src="./images/linea.png" width="341" height="4">
            </div></td>
        </tr>
        <tr>
          <td height="341" background="./images/form-back.jpg">
                 <g:if test="${foto?.errors}">
          			<div class="errores">
						<div class="ch-cone"></div>
						<div class="ch-helper-content">
							<p class="error title">Oops! algo anduvo mal, verifica los errores.</p>
							<p><g:each in="${foto?.errors?.getFieldErrors('descripcion')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${foto?.errors?.getFieldErrors('archivo')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${foto?.errors?.getFieldErrors('nombre')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${foto?.errors?.getFieldErrors('lugar')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${foto?.errors?.getFieldErrors('email')}" var="error"> ${error.defaultMessage}</g:each></p>
							<p><g:each in="${foto?.errors?.getFieldErrors('acepta_tyc')}" var="error"> ${error.defaultMessage}</g:each></p>
						</div>
					</div>
				  </g:if>
          <g:form id="fotoForm" name="fotoForm" method="post" url="subir-foto-post" enctype="multipart/form-data">
            <table width="266" border="0" align="center" cellpadding="0" cellspacing="0">
              <tbody><tr>
                <td width="266"><p>
                  <label><strong><span class="style3 style5">Categoría <span class="style7">(*)</span></span></strong>
                  <select name="categoria" class="style6" id="categoria">
                    <option value="plastico">Plástico</option>
                    <option value="metal" selected="selected">Metal</option>
                    <option value="madera">Madera</option>
                    <option value="vidrio">Vidrio</option>
                    <option value="papel">Papel</option>
                    <option value="organicos">Orgánicos</option>
                    <option value="productos">Productos</option>
                    <option value="otros">Otros</option>
                  </select>
                  </label>
                </p>
                  <span class="style3 style5">
                  	<strong>
	                  	Descripción
                  	</strong><span class="style7">(*)</span>
                        <label>
                        <br>
                        <input name="descripcion" type="text" class="style6" id="descripcion" size="35" value="${foto?.descripcion}"/>
                      </label>
                      <br>
                      <br>
                      <span class="style3 style5">
                      <strong>
                      Lugar
                      </strong>
                        </span><span class="style7">(*)</span>
				 
                      <span class="style3 style5"><br>
                      <label>
                      	<input name="lugar" type="text" class="style6" id="lugar" size="40" value="${foto?.lugar}">
                      </label>
                      <br>
                      <br>
                  <input name="archivo" type="file" id="archivo" size="35" value="${foto?.archivo}">
                  <br>
                  </br>
                    <strong><span class="style3 style5">Nombre y Apellido </span><span class="style7">(*)</span><span class="style3 style5"><br> 
                  <label>
                      <input name="nombre" type="text" class="style6" id="nombre" size="40" value="${foto?.nombre}">
                      </label>
                      
                      <br>
                      <br>
                      </span></strong><strong><span class="style3 style5">E-mail  </span><span class="style7">(*)</span><span class="style3 style5"><br>
                      <label>
                      <input name="email" type="text" class="style6" id="email" size="40" value="${foto?.email }">
                      </label>
                      <br>
                    <label>
	                    <br>
	                    <input name="acepta_tyc" type="checkbox" id="acepta_tyc" checked="${foto?.acepta_tyc}">
                    </label>
                    <strong>
                   	<span class="style3 style5 style9">
			   <a href="popupex.html" onclick="return popitup('tyc.html')">Leí y acepto los términos y  condiciones </a>
			</span>
                    	<span class="style10">(*)</span>
                    </strong>
                    <strong><span class="style10"><br></span><br>
                  
                  <p>
	                  <strong><span class="style10">(*)</span> </strong>
	                  <span class="style3 style5 style9">Datos obligatorios  </span>
                  </p>
                  
                  
                  <a id="submit" href="" class="styleAdjuntarFoto">
	                  <img src="./images/finalizar.jpg"" alt="proyecto re la marca editora" width="126" height="38">
                  </a>
                          
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
<p>&nbsp;</p>

<script language="javascript" type="text/javascript">
<!--
function popitup(url) {
	newwindow=window.open(url,'name','height=400,width=150');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

<script>

$("#submit").click(function(event){
	event.preventDefault();
	document.forms["fotoForm"].submit();
})

//$('#archivo').customFileInput();
</script>
</body></html>
