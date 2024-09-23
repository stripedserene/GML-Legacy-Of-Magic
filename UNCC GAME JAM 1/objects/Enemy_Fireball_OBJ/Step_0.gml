
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

if place_meeting(x, y, Wall_OBJ) or place_meeting(x, y, Thorn_OBJ) == true
	{
	lifespan = 1
	}
if x < 0 or x > 400 or y < 0 or y > 300 or place_meeting(x, y, Wall_OBJ) or place_meeting(x, y, Player_Weapon_Shield_OBJ) == true or place_meeting(x, y, Player_Weapon_Shield_OBJ_2) == true or place_meeting(x, y, Player_OBJ)
	{
	instance_create_layer(x, y, "Instances", Enemy_Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Enemy_Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Enemy_Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Enemy_Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Enemy_Explosion_OBJ)
	lifespan = 0
	}

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}