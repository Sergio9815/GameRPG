image_speed = 0.2;
image_blend = c_gray;
sprite_index = sp_OrcoMuerte;

if (image_index >= image_number-1)
{
	image_index = image_number-1;
	
	y -= 0.2;
	image_alpha -= 0.01;
	if (image_alpha < 0) 
	{
		instance_destroy();
		global.restO--;
	}
	
}