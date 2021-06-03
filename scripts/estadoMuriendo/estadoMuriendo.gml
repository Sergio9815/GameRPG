image_speed = 0.7;
image_blend = c_gray;
sprite_index = muerto;

if (image_index >= image_number-1)
{
	image_index = image_number-1;
	
	image_alpha -= 0.01;	
	
	if (image_alpha < 0) 
	{
		global.murio = true;
		room_goto(4);
	}
}