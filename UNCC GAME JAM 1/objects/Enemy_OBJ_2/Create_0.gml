
Xspeed = 0
Yspeed = 0
obj_HP = 3
BurstActive = false 
numShots = 0

speed = 1.3

BurstTimer = 50
ShotTimer = 25

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}