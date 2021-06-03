if silenciar == false
{
	sprite_index = sp_Sound;
	image_index = 1;
	image_speed = 0;
	audio_stop_all();
	silenciar = true;
}
else
if silenciar == true
{
	sprite_index = sp_Sound;
	image_index = 0;
	image_speed = 0;
	audio_play_sound(sound_Menu, 1, true);
	silenciar = false;
}
