$respuesta->datos=$datos;

$imagen = $respuesta ['imagen'];
$corta = $respuesta ['corta'];
$descripcion = $respuesta ['descripcion'];
$precio = $respuesta ['precio'];

$sqlproducto = '<div class="producto">
<img src="'.$imagen.'" alt="">
<div class="producto-nombre">'.$corta.'</div>
<div class="producto-descripcion">'.$descripcion.'</div>
<div class="producto-precio"> $'.$precio.'</div>
</div>';