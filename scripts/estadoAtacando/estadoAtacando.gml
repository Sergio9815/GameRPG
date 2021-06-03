image_speed = 0.65;

anima_ataque = image_index >= image_number-2 and crearAtaque;

switch(dir){
	case "abajo":
		sprite_index = ataqueAbajo;
		if (anima_ataque) instance_create_layer(x, y+32, "Instances", obj_Ataque);
		break;
	case "arriba":
		sprite_index = ataqueArriba;
		if (anima_ataque) instance_create_layer(x, y-8, "Instances", obj_Ataque);
		break;
	case "izquierda":
		sprite_index = ataqueIzquierda;
		if (anima_ataque) instance_create_layer(x-16, y+8, "Instances", obj_Ataque);
		break;
	case "derecha":
		sprite_index = ataqueDerecha;
		if (anima_ataque) instance_create_layer(x+16, y+8, "Instances", obj_Ataque);
		break;
}

if (anima_ataque) crearAtaque = false;

if(image_index >= image_number-1){
	crearAtaque = true;
	estado = ej.parado;
}

