if instance_exists(Player_OBJ){
	if Player_OBJ.invisible == true {
		image_alpha = 0.3
	}
	else {
		image_alpha = 1
	}
	image_xscale = 0.06
	image_yscale = 0.06
	
	direction = point_direction(x, y, mouse_x, mouse_y)
	x = Player_OBJ.x - 2
	y = Player_OBJ.y - 3
	
	
	if direction >= 90 and direction <= 270{
		image_angle = direction + 180
		if Player_OBJ.invisible == true {
			image_alpha = 0.3
		}
		else {
			image_alpha = 1
		}
	}
	else {
		image_alpha = 0
	}
}
else {
	instance_destroy()
}