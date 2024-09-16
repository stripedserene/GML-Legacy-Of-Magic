/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Bullet_Shotgun_OBJ) {
	wallHealth -= 2
}
if place_meeting(x, y, Bullet_OBJ) {
	wallHealth -= 1
}

if place_meeting(x, y, Explosion_OBJ) {
	var inst_fire = instance_place(x, y, Explosion_OBJ)
	if inst_fire.image_alpha == 1{
		wallHealth -= 10
	}
}

if place_meeting(x, y, Bullet_Sniper_OBJ) {
	bulletInst = instance_place(x, y, Bullet_Sniper_OBJ)
	if bulletInst.hitWall == false {
		wallHealth -= 10
		bulletInst.hitWall = true
	}
}


if place_meeting(x, y, Enemy_Bullet_OBJ) {
	wallHealth -= 2
}
if place_meeting(x, y, Enemy_Shotgun_Bullet_OBJ) {
	wallHealth -= 2
}

if wallHealth <= 0 {
	instance_destroy()
}

image_alpha = (wallHealth + (0.3 * startingWallHealth)) / (startingWallHealth)