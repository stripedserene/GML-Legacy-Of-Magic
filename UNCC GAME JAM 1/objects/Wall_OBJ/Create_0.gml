/// @description Insert description here
// You can write your code in this editor
image_xscale = irandom_range(1, 64)
image_yscale = irandom_range(1, 64)

if place_meeting(x, y, Player_OBJ) {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Wall_OBJ)
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Wall_OBJ)
	instance_destroy()
}

wallHealth = (image_xscale * image_yscale) / 10
startingWallHealth = wallHealth

invincible = false
invincibilityTimer = 50