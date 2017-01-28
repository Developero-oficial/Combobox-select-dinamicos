<?php 
require_once 'conexion.php';

function getListasRep(){
  $mysqli = getConn();
  $query = 'SELECT * FROM `listas_reproduccion`';
  $result = $mysqli->query($query);
  $listas = '<option value="0">Elige una opción</option>';
  while($row = $result->fetch_array(MYSQLI_ASSOC)){
    $listas .= "<option value='$row[id]'>$row[nombre]</option>";
  }
  return $listas;
}

echo getListasRep();