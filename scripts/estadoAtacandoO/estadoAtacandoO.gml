image_speed = 0.65;

anima_ataque = image_index >= image_number-2 and crear_ataque;

if (global.murio == false)
{
	switch(dire){
		case "abajo":
			sprite_index = sp_OrcoAtacarAb;
			if (anima_ataque) instance_create_layer(x, y+32, "Instances", obj_AtaqueG);
			break;
		case "arriba":
			sprite_index = sp_OrcoAtacarAr;
			if (anima_ataque) instance_create_layer(x, y-8, "Instances", obj_AtaqueG);
			break;
		case "izquierda":
			sprite_index = SP_OrcoAtacarI;
			if (anima_ataque) instance_create_layer(x-16, y+8, "Instances", obj_AtaqueG);
			break;
		case "derecha":
			sprite_index = sp_OrcoAtacarD;
			if (anima_ataque) instance_create_layer(x+16, y+8, "Instances", obj_AtaqueG);
			break;
	}
}
else
{
	switch(dire){
		case "abajo":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_OrcoAtacarAb;
			break;
		case "arriba":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_OrcoAtacarAr;
			break;
		case "izquierda":
			image_index = 0;
			image_speed = 0;
			sprite_index = SP_OrcoAtacarI;
			break;
		case "derecha":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_OrcoAtacarD;
			break;
	}
}

if (anima_ataque) crear_ataque = false;

if(image_index >= image_number-1){
	crear_ataque = true;
	estado = eo.quieto;
}

