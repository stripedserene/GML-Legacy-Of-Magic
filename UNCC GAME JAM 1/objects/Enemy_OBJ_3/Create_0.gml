
Xspeed = 0
Yspeed = 0
obj_HP = 3

ShotTimer = 50

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}