if instance_exists(Player_OBJ){
	direction = point_direction(x, y, mouse_x, mouse_y)
	x = Player_OBJ.x - 2
	y = Player_OBJ.y - 3
	if direction >= 90 and direction <= 270{
		image_angle = direction + 180
	}
	else {
		image_angle = 0
	}
}
else {
	instance_destroy()
}