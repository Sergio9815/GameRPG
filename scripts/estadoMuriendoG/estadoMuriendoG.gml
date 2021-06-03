image_speed = 0.2;
image_blend = c_gray;
sprite_index = sp_GoblinMuerte;

if (image_index >= image_number-1)
{
	image_index = image_number-1;
	
	y -= 0.2;
	image_alpha -= 0.01;
	if (image_alpha < 0)
	{
		instance_destroy();
		if (global.nivel == 1) global.restG--;
		
		if (global.nivel == 2) global.restG2--;
		
		if (global.nivel == 3) global.restGtuto--;
	}
	
}