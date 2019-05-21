<?php
$nombre = $_POST['nombre']; 
$email = $_POST['email'];
$telefono = $_POST['telefono']; 
$mensaje = $_POST['mensaje']; 

$header = 'From: ' . $email . " \r\n"; 
$header .= "X-Mailer: PHP/" . phpversion() . " \r\n"; 
$header .= "Mime-Version: 1.0 \r\n"; 
$header .= "Content-Type: text/plain"; 

$mensaje = "Nombre: " . $nombre . "\r\n"; 
$mensaje .= "Email: " . $email . " \r\n"; 
$mensaje .= "Teléfono: " . $telefono . " \r\n"; 
$mensaje .= "Mensaje: " . $_POST['mensaje'] . " \r\n"; 

$para = 'cristinaferza@gmail.com'; 
$asuntoMail .= "" . $nombre . " \r\n"; 
//$respuesta = 'ha llegado bien';

mail($para, $asuntoMail, utf8_decode($mensaje), $header); 
header("Location:respuesta.html");
//header("Location:contacto.php?respuesta=".$respuesta)
?>