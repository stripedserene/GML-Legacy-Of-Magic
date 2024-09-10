/// @description Insert description here
// You can write your code in this editor

if instance_exists(Player_OBJ){
	direction = point_direction(x, y, mouse_x, mouse_y)
	
	x = Player_OBJ.x + 2
	y = Player_OBJ.y - 3
	
	if direction <= 90 or direction >= 270 {
		visible = true
		image_angle = direction
	}
	else {
		instance_destroy()
		image_angle = 0
	}
}
else {
	instance_destroy()
}

instance_destroy()