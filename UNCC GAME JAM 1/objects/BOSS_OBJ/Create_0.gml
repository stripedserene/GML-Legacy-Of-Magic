image_xscale = 1.7
image_yscale = 1.7


Xspeed = 0
Yspeed = 0
obj_HP = 650
BurstActive = false 
numShots = 0

stunDuration = 300
obj_stuned = false

speed = 1.3

BurstTimer = 10
ShotTimer = 23

instance_create_layer(25, 10, "TEXT_DISPLAY_LAYER", BOSS_Healthbar_OBJ)

if place_meeting(x, y, Wall_OBJ) {
	Player_OBJ.EnemySpawnTimer = 1
	instance_destroy()
}