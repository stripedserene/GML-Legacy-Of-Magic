/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Bullet_Shotgun_OBJ) {
	wallHealth -= 0.5
}
if place_meeting(x, y, Bullet_OBJ) {
	wallHealth -= 1
}
if place_meeting(x, y, Bullet_Sniper_OBJ) {
	wallHealth -= 5
}



if wallHealth <= 0 {
	instance_destroy()
}