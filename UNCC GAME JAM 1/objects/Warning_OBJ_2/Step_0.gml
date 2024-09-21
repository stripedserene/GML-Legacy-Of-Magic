/// @description Insert description here
// You can write your code in this editor
Lifespan -= 1

if Lifespan <= 0 {
	instance_create_layer(x, y, "Instances", Enemy_OBJ_2)
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) {
	if instance_exists(Player_OBJ) {
		Player_OBJ.EnemySpawnTimer = 1
	}
	instance_destroy()
}