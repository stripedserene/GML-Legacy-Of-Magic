
Xspeed = 0
Yspeed = 0
obj_HP = 3

obj_stuned = false
speed = 1

ShotTimer = 120

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}