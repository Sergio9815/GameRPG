#region//variables
	depth = -y;
	vv = 0;
	vh = 0;
	 v = 1;
#endregion

#region//posicion
	if(distance_to_point(objectCA.x, objectCA.y) < radio_vision)
	{
		vh = sign(objectCA.x-x) * v;
		vv = sign(objectCA.y-y) * v;
	}
	else
	{
		vh = sign(xstart-x) * v;
		vv = sign(ystart-y) * v;
	}
#endregion

#region//movimiento
	if (vv > 0) dire = "abajo";
	else if (vv < 0) dire = "arriba";
	else if (vh > 0) dire = "derecha";
	else if (vh < 0) dire = "izquierda";
	
	if(estado != eo.atacar){
		if(dire != "") estado = eo.corriendo;
	
		if(vh == 0 and vv == 0) estado = eo.quieto;
	}
	else{
		vh = 0;
		vv = 0;
		
		grados = point_direction(x, y, objectCA.x, objectCA.y);
		if (grados < 45 or grados > 315) dire = "derecha";
		else if (grados >= 45 and grados < 135) dire = "arriba";
		else if (grados >= 135 and grados < 225) dire = "izquierda";
		else if (grados >= 225 and grados <= 315) dire = "abajo";
	}
	
	if (vida <= 0)
	{
		estado = eo.muriendo;
		vh = 0;
		vv = 0;
	}
#endregion
 
#region//ataques
	if (distance_to_point(objectCA.x, objectCA.y) < radio_ataque and estado != eo.atacar and estado != eo.muriendo)
	{
		estado = eo.atacar;
		image_index = 0;
	}
#endregion

x += vh;
y += vv;

script_execute(estado);

instance_create_layer(x, y+15, "Instances", obj_Sombra);