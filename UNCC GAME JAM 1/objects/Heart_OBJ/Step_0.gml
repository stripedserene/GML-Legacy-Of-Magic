if place_meeting(x, y, Player_OBJ) {
	Player_OBJ.NumLives += 1
	instance_destroy()
}

lifespan -= 1

if lifespan <= 1{
	instance_destroy()
}