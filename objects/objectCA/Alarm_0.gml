if (global.segundos == 60) 
{	
	global.Minutos++;
	global.segundos = 0;
}
else
{
	global.segundos++;
}

alarm_set(0, 60);