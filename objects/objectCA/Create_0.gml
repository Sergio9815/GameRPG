image_speed = 0;

enum ej {
	parado = estadoParado,
	caminando = estadoCaminando,
	atacando = estadoAtacando,
	muerte = estadoMuriendo
}
alarma1 = false;
siguiente = 0;

Pause = false;
Fondo = -1;

global.Minutos = 0;
global.segundos = 0;

alarm_set(0, 60);
alarm_set(1, 60);

global.vida = 15;

global.totalGTuto = 3;
global.restGtuto = 3;

global.totalG = 17;
global.restG = 17;

global.totalO = 10;
global.restO = 10;

global.totalG2 = 15;
global.restG2 = 15;

dir = "abajo";

estado = ej.parado;

crearAtaque = true;

global.murio = false;