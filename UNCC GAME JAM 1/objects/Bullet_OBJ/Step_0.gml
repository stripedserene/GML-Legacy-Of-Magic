
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}

if instance_exists(Player_OBJ){
	if place_meeting(x, y, Wall_OBJ) == true
		{
		instance_destroy()
		}
	if place_meeting(x, y, Enemy_OBJ) or place_meeting(x, y, Enemy_OBJ_2) == true
		{
		lifespan = 2
		}
}