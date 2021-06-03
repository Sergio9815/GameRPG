image_speed = 0.60;
if(image_index == 0) image_index++;

switch(dire){
	case "abajo":
		sprite_index = sp_GoblinCab;
		break;
	case "arriba":
		sprite_index = sp_GoblinCar;
		break;
	case "izquierda":
		sprite_index = sp_GoblinCi;
		break;
	case "derecha":
		sprite_index = sp_GoblinCd;
		break;
}