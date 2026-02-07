<?

require_once __DIR__ . '/db-connect.php';

// Emulate Country for IP
// if($_SERVER['GEOIP_ADDR'] == '201.253.85.26') $_SERVER['GEOIP_COUNTRY_CODE'] = 'PE';

// Leer nombre de la pagina
$Pagina = $_SERVER['QUERY_STRING'];
$Div = stripos($Pagina, "/");
$CuadroID = substr($Pagina, 0, $Div);

// Read MySQL
$query = "select * from `Cuadros` where `CuadroID` = '$CuadroID'";
$dataCuadro =& $db->getRow($query, array(), DB_FETCHMODE_ASSOC);

// Check for database errors
if (PEAR::isError($dataCuadro)) {
  die("Database Error: " . $dataCuadro->getMessage() . " - Query: " . $query);
}

// Check if cuadro exists
if (!$dataCuadro) {
  header("HTTP/1.1 404 Not Found");
  die("Cuadro not found: $CuadroID");
}

// Correct Page Name
$CorrectPageName = $CuadroID . '/' . $dataCuadro['PageName'];

// Redirect to Correct Page
if ($CorrectPageName != $Pagina) {

  header("HTTP/1.1 301 Moved Permanently");
  header("Location: /cuadro/" . $CorrectPageName);
  exit;

}

// Informacion de Laminas
$query = "select * from `Laminas`";
$dataLaminas =& $db->getAssoc($query, true, array(), DB_FETCHMODE_ASSOC);

// Informacion de Reproducciones
$query = "select * from `Reproducciones`";
$dataReproducciones =& $db->getAssoc($query, true, array(), DB_FETCHMODE_ASSOC);

// Determinar Precios a Mostrar
if ($_SERVER['HTTP_CF_IPCOUNTRY'] == 'AR') {

  $DisplayPrice = $dataCuadro['Precio'];
  $DisplayRepPrice = $dataCuadro['PrecioRep'];

  // Precios de las Laminas
  foreach ($dataLaminas as $LaminaID => $LaminaData) {
    $DisplayLine[$LaminaID] = $LaminaData['Alto'] . " cm x " . $LaminaData['Ancho'] . " cm ........................................................... " . $LaminaData['Precio'];
  }

  // Precios de las Reproducciones
  foreach ($dataReproducciones as $ReproduccionID => $ReproduccionData) {
    $ReproduccionLine[$ReproduccionID] = $ReproduccionData['Alto'] . " cm x " . $ReproduccionData['Ancho'] . " cm .............................................. " . $ReproduccionData['Precio'];
  }

} else {

  // Determinar Precio a Mostrar
  switch ($_SERVER['HTTP_CF_IPCOUNTRY']) {

    case 'ES'; // Espana

      $DisplayPrice = $dataCuadro['Precio_EUR'];
      $DisplayRepPrice = $dataCuadro['PrecioRep_EUR'];

      foreach ($dataLaminas as $LaminaID => $LaminaData) {
        $DisplayLine[$LaminaID] = $LaminaData['Alto'] . " cm x " . $LaminaData['Ancho'] . " cm ........................................................... " . $LaminaData['Precio_EUR'];
      }

      foreach ($dataReproducciones as $ReproduccionID => $ReproduccionData) {
        $ReproduccionLine[$ReproduccionID] = $ReproduccionData['Alto'] . " cm x " . $ReproduccionData['Ancho'] . " cm .............................................. " . $ReproduccionData['Precio_EUR'];
      }

      break;

    default;
      $DisplayPrice = $dataCuadro['Precio_USD'];
      $DisplayRepPrice = $dataCuadro['PrecioRep_USD'];

      foreach ($dataLaminas as $LaminaID => $LaminaData) {
        $DisplayLine[$LaminaID] = $LaminaData['Alto'] . " cm x " . $LaminaData['Ancho'] . " cm ........................................................ " . $LaminaData['Precio_USD'];
      }

      foreach ($dataReproducciones as $ReproduccionID => $ReproduccionData) {
        $ReproduccionLine[$ReproduccionID] = $ReproduccionData['Alto'] . " cm x " . $ReproduccionData['Ancho'] . " cm .............................................. " . $ReproduccionData['Precio_USD'];
      }

  }

}

// Si Cuadro esta Vendido
if ($dataCuadro['Status'] == 'Vendido')
  $DisplayPrice = 'Vendido';

// Disconnect from DB
$db->disconnect();

?>