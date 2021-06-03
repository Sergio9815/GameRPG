image_speed = 0.65;

anima_ataque = image_index >= image_number-2 and crear_ataque;

if (global.murio == false)
{
	switch(dire){
		case "abajo":
			sprite_index = sp_GoblinAab;
			if (anima_ataque) instance_create_layer(x, y+32, "Instances", obj_AtaqueG);
			break;
		case "arriba":
			sprite_index = sp_GoblinAa;
			if (anima_ataque) instance_create_layer(x, y-8, "Instances", obj_AtaqueG);
			break;
		case "izquierda":
			sprite_index = sp_GoblinAi;
			if (anima_ataque) instance_create_layer(x-16, y+8, "Instances", obj_AtaqueG);
			break;
		case "derecha":
			sprite_index = sp_GoblinAd;
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
			sprite_index = sp_GoblinAab;
			break;
		case "arriba":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_GoblinAa;
			break;
		case "izquierda":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_GoblinAi;
			break;
		case "derecha":
			image_index = 0;
			image_speed = 0;
			sprite_index = sp_GoblinAd;
			break;
	}
}

if (anima_ataque) crear_ataque = false;

if(image_index >= image_number-1){
	crear_ataque = true;
	estado = eg.quieto;
}

