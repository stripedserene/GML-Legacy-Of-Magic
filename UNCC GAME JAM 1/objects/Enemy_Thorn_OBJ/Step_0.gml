/// @description Insert description here
// You can write your code in this editor
lifespan -= 1

if lifespan <= 0 {
	instance_destroy()
}

if place_meeting(x, y, Player_OBJ){
	Player_OBJ.NumLives -= 1
	instance_destroy()
}