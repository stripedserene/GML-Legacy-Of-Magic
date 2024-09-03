
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}
