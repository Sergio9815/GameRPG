#region//inicializar movimiento
	vv = 2;
	vh = 2;
#endregion

#region//capturar teclado
	var der = keyboard_check(vk_right);
	var izq = keyboard_check(vk_left);
	var up = keyboard_check(vk_up);
	var down = keyboard_check(vk_down);
	depth = -y;
#endregion

#region//gestion del movimiento
	if der
	{
		x += vh;
		dir = "derecha";
	}

	if izq
	{
		x -= vh;
		dir = "izquierda";
	}

	if up
	{
		y -= vv;
		dir = "arriba";
	}

	if down
	{
		y+= vv;
		dir = "abajo";
	}

	if !der and !izq and !up and !down
	{
		vv = 0;
		vh = 0;
	}
#endregion

#region//Gestion de estados
	if(estado != ej.atacando){
		if(dir != "") estado = ej.caminando;
	
		if(vh == 0 and vv == 0) estado = ej.parado;
	}
	else{
		vh = 0;
		vv = 0;
	}

	//gestion del ataque
	if(keyboard_check_pressed(vk_space) and estado != ej.atacando){
		estado = ej.atacando;
		image_index = 0;
	}

	if (global.vida <= 0)
	{
		estado = ej.muerte;
		vh = 0;
		vv = 0;
	}
	
	script_execute(estado);
	
#endregion

instance_create_layer(x, y+15, "Instances", obj_Sombra);

#region//Ganar
	if global.nivel == 1 and global.restG <= 0
	{
		room_goto(3);
	}
	
	if global.nivel == 2 and global.restG2 <= 0 and global.restO <= 0
	{
		room_goto(3);
	}
	
	if global.nivel == 3 and global.restGtuto <= 0
	{
		room_goto(6);
	}
#endregion