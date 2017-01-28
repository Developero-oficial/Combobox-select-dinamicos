<?php 
function getConn() {
  $mysqli = new mysqli("localhost", "root", "", "tutoriales");
  if ($mysqli->connect_errno)
      return "Fallo al conectar a MySQL: " . $mysqli->connect_error;
  $mysqli->set_charset('utf8');
  return $mysqli;
}
