<?php
include 'conexion.php';
$respuesta =new stdClass ();

$datos= [];
$i=0;
$sql = "select * from productos where stock <=0";
$resultado=mysqli_query($conexion, $sql);
while ($row=mysqli_fetch_array ($resultado)) {
    $producto=new stdClass();
    $producto->sku=$row['sku'];
    $producto->precio=$row['precio']; 
    $producto->corta=$row['corta'];
    $producto->descripcion=$row['descripcion'];
    $producto->stock=$row['stock'];
    $producto->imgen=$row['imagen'];
    $datos[$i] = $producto;
    $i++;

}    
    
mysqli_close($conexion);
header ('Content-Type: application/json');
echo json_encode($response);

?>