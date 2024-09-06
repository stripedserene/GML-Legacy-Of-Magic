if place_meeting(x, y, Player_OBJ) {
	if Player_OBJ.NumLives <3 {
		Player_OBJ.NumLives += 1
		instance_destroy()
	}
	else {
		Player_OBJ.EnemyKilled += 10
		instance_destroy()
	}
}

lifespan -= 1

if lifespan <= 1{
	instance_destroy()
}