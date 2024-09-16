
if instance_exists(Player_OBJ) and Player_OBJ.invisible == false {
	direction = point_direction(x, y, Player_OBJ.x, Player_OBJ.y);
}
speed = 3.2;
image_angle = direction;

lifespan = 300