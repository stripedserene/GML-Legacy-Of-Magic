/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Wall_OBJ) or place_meeting(x, y, Player_OBJ){
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Advance_OBJ_4)
	instance_destroy()
}