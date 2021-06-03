image_speed = 0.60;
if(image_index == 0) image_index++;

switch(dire){
	case "abajo":
		sprite_index = sp_OrcoCa;
		break;
	case "arriba":
		sprite_index = sp_OrcoCar;
		break;
	case "izquierda":
		sprite_index = sp_OrcoCi;
		break;
	case "derecha":
		sprite_index = sp_OrcoCd;
		break;
}