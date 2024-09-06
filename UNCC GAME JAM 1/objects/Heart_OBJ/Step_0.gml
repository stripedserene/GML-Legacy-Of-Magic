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

if place_meeting(x, y, Wall_OBJ) == true
	{
	instance_destroy()
	instance_create_layer(random_range(0, 400), random_range(0, 300), "Instances", Heart_OBJ)
	}

lifespan -= 1

if lifespan <= 0{
	instance_destroy()
}