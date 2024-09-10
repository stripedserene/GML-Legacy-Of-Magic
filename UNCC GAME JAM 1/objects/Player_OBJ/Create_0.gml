randomize()

RoomGen()

Xspeed = 0
Yspeed = 0

player_x = x
player_y = y

EnemyKilled = 0

Energy = 100

NumLives = 3

invulnerability = false
invulnerabilityTime = 50
damaged = false

instance_create_layer(random_range(0, 400), random_range(0, 300), "Instances", Bullet_Pickup_OBJ)

BulletSpawnTimer = 300
OldBulletSpawnTimer = 300

HeartSpawnTimer = 2000
OldHeartSpawnTimer = 2000

EnemySpawnTimer = 200
OldEnemySpawnTimer = 200

// weaponType = "Sniper"
//weaponType = "Shotgun"
weaponType = "Hail Storm"

if weaponType == "Sand Blast"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ_2)
}

if weaponType == "Hail Storm"{
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ_2)
}
if weaponType == "Lightning Bolt"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ_2)
}

if weaponType == "Hail Storm"{
	MoveSpeed = 2.5
}
if weaponType == "Lightning Bolt"{
	MoveSpeed = 1.5
}
else{
	MoveSpeed = 2
}


