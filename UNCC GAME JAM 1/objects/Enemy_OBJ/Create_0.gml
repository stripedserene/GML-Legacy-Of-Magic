
Xspeed = 0
Yspeed = 0
obj_HP = 3

stunDuration = 300
obj_stuned = false

speed = 1.7

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}