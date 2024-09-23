
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}
if x < 0 or x > 400 or y < 0 or y > 300 or place_meeting(x, y, Wall_OBJ) == true
	{
	instance_create_layer(x, y, "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	lifespan = 0
	}
if place_meeting(x, y, Enemy_OBJ) or place_meeting(x, y, Enemy_OBJ_2) or place_meeting(x, y, Enemy_OBJ_3) or place_meeting(x, y, BOSS_OBJ) == true
	{
	instance_create_layer(x, y, "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	instance_create_layer(x + random_range(-30, 30), y + random_range(-20, 20), "Instances", Explosion_OBJ)
	lifespan = 0
	}