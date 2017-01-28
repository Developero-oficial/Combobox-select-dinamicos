<?php 
function getConn(){
  $mysqli = mysqli_connect('localhost', 'root', '', "tutoriales");
  if (mysqli_connect_errno($mysqli))
    echo "Fallo al conectar a MySQL: " . mysqli_connect_error();
  $mysqli->set_charset('utf8');
  return $mysqli;
}