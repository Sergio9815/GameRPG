#region//Barra de vida
	if (global.vida > 15) global.vida = 15;
	if (global.vida >= 11 and global.vida <= 15) draw_sprite(sp_Vidas, 3, 10, 20);
	if (global.vida >= 6 and global.vida <= 10) draw_sprite(sp_Vidas, 2, 10, 20);
	if (global.vida >= 1 and global.vida <= 5) draw_sprite(sp_Vidas, 1, 10, 20);
	if (global.vida == 0) draw_sprite(sp_Vidas, 0, 10, 20);
#endregion

#region//Nivel 
	if global.nivel == 1 or global.nivel == 3
	{
		draw_sprite(sp_Level, 0, 80, 540);
		draw_sprite(sp_Num, 0, 140, 540);
	}
	
	if global.nivel == 2
	{
		draw_sprite(sp_Level, 0, 80, 540);
		draw_sprite(sp_Num2, 0, 140, 540);
	}
#endregion

#region//Armas
	draw_sprite(sp_Arma, 0, 610, 515);
#endregion

#region//Pausa
	if Pause
	{
		if Fondo == -1
		{
			Fondo = sprite_add("pausa.png",0,0,0,0,0);
		}
		draw_sprite(Fondo, 0, 0, 0);
		draw_sprite(sp_Pause, 0, 325, 280);
		draw_text(155, 380, "Presione 'P' para continuar...");
	}
#endregion

#region//Tiempo de juego
	draw_set_color(c_white);
	draw_set_font(f_letra2);
	draw_text(215,40, "GAME TIME  " + string(global.Minutos) + " : " + string(global.segundos));
#endregion

#region//Objetivos
	if (global.nivel == 1) 
	{
		draw_sprite(sp_FaceGoblin, 0, 540, 60);
		draw_set_color(c_white);
		draw_set_font(f_letra2);
		draw_text(560, 65, string(global.totalG) + "/" + string(global.restG));
	}
	
	if (global.nivel == 2)
	{
		draw_sprite(sp_FaceGoblin, 0, 540, 60);
		draw_set_color(c_white);
		draw_set_font(f_letra2);
		draw_text(560, 65, string(global.totalG2) + "/" + string(global.restG2));
		
		draw_sprite(sp_FaceOrco, 0, 540, 120);
		draw_set_color(c_white);
		draw_set_font(f_letra2);
		draw_text(560, 125, string(global.totalO) + "/" + string(global.restO));
	}
	
	if (global.nivel == 3) 
	{
		draw_sprite(sp_FaceGoblin, 0, 540, 60);
		draw_set_color(c_white);
		draw_set_font(f_letra2);
		draw_text(560, 65, string(global.totalGTuto) + "/" + string(global.restGtuto));
	}
#endregion

#region//Tutorial
	if global.nivel == 3
	{
		if alarma1 == true
		{
			if siguiente < 8
			{
				draw_sprite(sp_Nube, 0, 180, 213);
				draw_set_color(c_navy);
				draw_set_font(f_letra1);
			}
		
			if siguiente == 0
			{
				draw_text(215, 260, "Bienvenido nuevo guerrero!");
				draw_text(195, 300, "Presiona 'Enter' para continuar...");
			}
			else if siguiente == 1
			{
				draw_text(195, 250, "En la parte superior de la pantalla");
				draw_text(208, 290, "se muestra tu nivel de vida, tu");
				draw_text(198, 330, "tiempo de juego y los enemigos");
				draw_text(235, 370, "que quedan con vida...");
			}
			else if siguiente == 2
			{
				draw_text(200, 260, "En la parte inferior de la pantalla");
				draw_text(230, 300, "puedes ver el nivel actual");
				draw_text(250, 340, "y el arma equipada...");
			}
			else if siguiente == 3
			{
				draw_text(200, 260, "Utiliza las teclas de direcciones");
				draw_text(215, 300, "para movilizarte por la isla...");
			}
			else if siguiente == 4
			{
				draw_text(205, 260, "Para desenfundar tu espada");
				draw_text(190, 300, "presiona la 'barra espaciadora'...");
			}
			else if siguiente == 5
			{
				draw_text(200, 260, "Si presionas la tecla 'P' el juego");
				draw_text(220, 300, "entra en modo pausa...");
			}
			else if siguiente == 6
			{
				draw_text(200, 260, "Para obtener vidas extra corta");
				draw_text(220, 300, "las plantas de flor blanca...");
			}
			else if siguiente == 7
			{
				draw_text(220, 260, "Haz culminado el tutorial.");
				draw_text(220, 300, "Ya estas listo para comenzar");
				draw_text(250, 340, "una nueva aventura...");
				alarm_set(2, 60);
			}
		}
	}
#endregion
/*
	draw_set_color(c_white);
	draw_set_font(f_letra1);
	draw_text(50, 400, string(global.vida));*/