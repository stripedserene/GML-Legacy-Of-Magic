randomize()

RoomGen()

Xspeed = 0
Yspeed = 0

player_x = x
player_y = y

EnemyKilled = 0

NumPistolBullets = 20
NumShotgunBullets = 8
NumSniperBullets = 10

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
weaponType = "Pistols"

if weaponType == "Shotgun"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ_2)
}

if weaponType == "Pistols"{
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ_2)
}
if weaponType == "Sniper"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ_2)
}

if weaponType == "Pistols"{
	MoveSpeed = 2.5
}
if weaponType == "Sniper"{
	MoveSpeed = 1.5
}
else{
	MoveSpeed = 2
}


