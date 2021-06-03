if(Pause == false)
{
	screen_save("pausa.png");
	instance_deactivate_all(true);
	Pause = true;
	audio_pause_all();
}
else
{
	sprite_delete(Fondo);
	Fondo = -1;
	instance_activate_all();
	audio_resume_all();
	Pause = false;
}