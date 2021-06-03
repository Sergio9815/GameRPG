event_inherited();

enum eo {
	quieto = estadoParadoO,
	corriendo = estadoCaminandoO,
	atacar = estadoAtacandoO,
	muriendo = estadoMuriendoO
}

dire = "abajo";

estado = eo.quieto;

vida = 10;
radio_vision = 150;
radio_ataque = 24;
crear_ataque = true; 
