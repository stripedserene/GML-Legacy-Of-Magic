/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, Enemy_OBJ) or place_meeting(x, y, Enemy_OBJ_2) {
	lifespan = 1
}

if lifespan <= 0{
	instance_destroy()
}

lifespan -= 1