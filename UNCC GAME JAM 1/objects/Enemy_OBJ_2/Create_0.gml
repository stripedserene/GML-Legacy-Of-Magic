
Xspeed = 0
Yspeed = 0
obj_HP = 3
BurstActive = false 
numShots = 0

BurstTimer = 120
ShotTimer = 25

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}