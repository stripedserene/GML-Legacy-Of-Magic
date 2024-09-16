
if instance_exists(Player_OBJ) and Player_OBJ.invisible == false {
	direction = point_direction(x, y, Player_OBJ.x, Player_OBJ.y);
}

direction += random_range(-10, 10)
x += random_range(-10, 10)
y += random_range(-10, 10)
speed = 3;
image_angle = direction;

lifespan = 300