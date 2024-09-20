/// @description Insert description here
// You can write your code in this editor

image_xscale = random_range(0.015625, 0.25498008)
image_yscale = random_range(0.015625, 0.31840796)

if place_meeting(x, y, Player_OBJ) {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Wall_OBJ)
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Wall_OBJ)
	instance_destroy()
}

wallHealth = ((image_xscale * 251) * (image_yscale*201)) / 10
startingWallHealth = wallHealth

invincible = false
invincibilityTimer = 50