/// @description Insert description here
// You can write your code in this editor
Lifespan -= 1

if Lifespan <= 0 {
	instance_create_layer(x, y, "Instances", BOSS_OBJ)
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) {
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Warning_BOSS_OBJ)
	instance_destroy()
}