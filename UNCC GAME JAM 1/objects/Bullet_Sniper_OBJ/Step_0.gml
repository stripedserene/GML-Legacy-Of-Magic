
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}
	
//if place_meeting(x, y, Wall_OBJ) {
//	wallInst = instance_place(x, y, Wall_OBJ)
//	wallInst.wallHealth -= 10
//}

