posy1 = random_range(67, 170);
posy2 = random_range(67, 170);
posy3 = random_range(67, 170);

posx1 = random_range(700, 770);
posx2 = random_range(850, 900);
posx3 = random_range(1000, 1080);

instance_create_layer(posx1, posy1, "Instances", obj_Goblin);

instance_create_layer(posx2, posy2, "Instances", obj_Goblin);

instance_create_layer(posx3, posy3, "Instances", obj_Goblin);

