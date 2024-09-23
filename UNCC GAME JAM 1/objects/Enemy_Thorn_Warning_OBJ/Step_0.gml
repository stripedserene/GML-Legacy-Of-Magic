/// @description Insert description here
// You can write your code in this editor
Lifespan -= 1

if Lifespan <= 0 {
	instance_create_layer(x, y, "Instances", Enemy_Thorn_OBJ)
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) or x > 400 or x < 0 or y > 300 or y < 0{
	if instance_exists(Player_OBJ) {
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		instance_destroy()
	}
}