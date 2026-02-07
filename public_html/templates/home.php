<?
  // Include Header
  function commonHeader() {
  global $title, $description, $keywords;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?=$title?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Language" content="en-us">
<meta name="Description" content="<?= (isset($description) ? $description : "Venta de cuadros al oleo. Galeria de arte donde comprar cuadros de varios estilos, pinturas de mariposas, flores, paisajes naturales y urbanos, rincones, bodegones. Disfruta de una obra de arte de un autor original"); ?>">
<meta name="Keywords" content="<?= (isset($keywords) ? $keywords : "cuadros, cuadros al oleo, venta cuadros, venta de cuadros, arte cuadros, cuadros pintores, venta de arte, copias de pinturas, venta de pintura, cuadros famosos, comprar cuadros, comprar arte, comprar pintura"); ?>">
<link href="styles.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		  <div id="header">
          		<a class="bitcoin-btn">Acepto <strong>Bitcoin</strong></a>
              <div class="social-icons">
                <span>Seguime en:</span>
                <a href="http://www.facebook.com/Cuadros.Abstractos" target=_blank><img src="images/ico-facebook.png" alt="Facebook" /></a>
                <a href="http://twitter.com/terepiacentino" target=_blank><img src="images/ico-twitter.png" alt="Twitter" /></a>
            </div>  
            <div class="language">
                <a href="/"><img src="images/flag-es.jpg" width="16" height="11" alt="espanol" /></a>
                <a href="/index_en.html"><img src="images/flag-en.jpg" width="16" height="11" alt="english" /></a>
            </div>  		  
   				<div class="links">
                	<a href="/">Inicio</a>
                    <a href="/galeria-cuadros-oleo-venta-online-precios.html">Galería</a>
                    <a href="/biografia-artista-contemporanea.html">Biografía</a>
                    <a href="/venta-reproducciones-laminas-arte.html">&nbsp;&nbsp;Reproducciones</a>
                    <a href="/comprar-cuadros-modernos-oleo.html">Contacto</a>
            	</div>
           </div>
    
<?
}
  // Include Footer
  function commonFooter() {
?>


		  <div id="footer">
              <a href="/">Inicio</a> | 
              <a href="/galeria-cuadros-oleo-venta-online-precios.html">Galería</a> | 
              <a href="/venta-reproducciones-laminas-arte.html">Venta de Reproducciones</a> | 			  
              <a href="/exhibicion-cuadros-venta-oleos.html">Artistas Amigos</a> | 
              <a href="/comprar-cuadros-modernos-oleo.html">Como Comprar?</a>
          </div>
	</div>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-295432-21");
pageTracker._initData();
pageTracker._trackPageview();
</script>
	
</body>
</html>

<?
}
?>
