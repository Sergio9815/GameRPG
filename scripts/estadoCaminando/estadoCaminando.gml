image_speed = 0.60;
if(image_index == 0) image_index++;

switch(dir){
	case "abajo":
		sprite_index = caminaAbajo;
		break;
	case "arriba":
		sprite_index = caminaArriba;
		break;
	case "izquierda":
		sprite_index = caminaIzquierda;
		break;
	case "derecha":
		sprite_index = caminaDerecha;
		break;
}