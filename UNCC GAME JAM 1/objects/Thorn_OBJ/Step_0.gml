/// @description Insert description here
// You can write your code in this editor
lifespan -= 1

if place_meeting(x, y, Enemy_OBJ) or place_meeting(x, y, Enemy_OBJ_2) or place_meeting(x, y, Enemy_OBJ_3)  {
	lifespan = 1
}

if place_meeting(x, y, BOSS_OBJ) {
	BOSS_OBJ.obj_HP -= 3
	instance_destroy()
}


if lifespan <= 0{
	instance_destroy()
}

