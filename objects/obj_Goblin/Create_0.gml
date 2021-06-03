event_inherited();

enum eg {
	quieto = estadoParadoG,
	corriendo = estadoCaminandoG,
	atacar = estadoAtacandoG,
	muriendo = estadoMuriendoG
}

dire = "abajo";

estado = eg.quieto;

vida = 10;
radio_vision = 200;
radio_ataque = 24;
crear_ataque = true; 
