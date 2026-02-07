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
				<div class="links">
                	<a href="/">Inicio</a>
