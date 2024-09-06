Right_key = keyboard_check(ord("D"));
Left_key = keyboard_check(ord("A"));
Up_key = keyboard_check(ord("W"));
Down_key = keyboard_check(ord("S"));

Xspeed = (Right_key - Left_key) * MoveSpeed;
Yspeed = (Down_key - Up_key) * MoveSpeed;

if  keyboard_check(ord("1")) {
	weaponType = "Pistols"
}

if  keyboard_check(ord("2")) {
	weaponType = "Shotgun"
}

if  keyboard_check(ord("3")) {
	weaponType = "Sniper"
}

if  mouse_check_button_pressed(mb_right) {
	weaponType = "Shield"
}

if place_meeting(x + Xspeed, y, Wall_OBJ) == true
	{
	Xspeed = 0;
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	Yspeed = 0;
	}

x += Xspeed;
y += Yspeed;


BulletSpawnTimer -= 1

if BulletSpawnTimer <= 0 {
	BulletType = irandom_range(1, 3)
	if BulletType == 1 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_OBJ)
	}
	if BulletType == 2 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_Shotgun_OBJ)
	}
	if BulletType == 3 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_Sniper_OBJ)
	}
	if OldBulletSpawnTimer > 150 {
		BulletSpawnTimer = OldBulletSpawnTimer - (OldBulletSpawnTimer / 5)
		OldBulletSpawnTimer = BulletSpawnTimer
	}
	else {
		BulletSpawnTimer = OldBulletSpawnTimer
	}
}

HeartSpawnTimer -= 1

if HeartSpawnTimer <= 0 {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Heart_OBJ)
	HeartSpawnTimer = 1000 + (OldHeartSpawnTimer / 4)
	OldHeartSpawnTimer = HeartSpawnTimer
}

EnemySpawnTimer -= 1 

EnemySpawnSide = irandom_range(1, 4)
EnemySpawnType = irandom_range(1, 8)

if EnemySpawnTimer <= 0 {
	if EnemySpawnSide = 1 {
		if EnemySpawnType == 8 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		else {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ)
		}
	}
	else if EnemySpawnSide = 2 {
		if EnemySpawnType == 8 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		else {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ)
		}
	}
	else if EnemySpawnSide = 3 {
		if EnemySpawnType == 8 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ_2)
		}
		else {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ)
		}
	}
	else if EnemySpawnSide = 4 {
		if EnemySpawnType == 8 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ_2)
		}
		else {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ)
		}
	}
	if OldEnemySpawnTimer > 100 {
		EnemySpawnTimer = OldEnemySpawnTimer - (OldEnemySpawnTimer / 5)
		OldEnemySpawnTimer = EnemySpawnTimer
	}
	else {
		EnemySpawnTimer = OldEnemySpawnTimer
	}
}

if mouse_check_button_pressed(mb_left){
	if NumPistolBullets > 0 {
		if weaponType = "Pistols"{
			instance_create_layer(x, y, layer, Bullet_OBJ);
			NumPistolBullets -= 1
		}
	}
	if NumSniperBullets > 0 {
		if weaponType = "Sniper"{
			instance_create_layer(x, y, layer, Bullet_Sniper_OBJ);
			NumSniperBullets -= 1
		}
	}
	if NumShotgunBullets > 0 {
		if weaponType = "Shotgun"{
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			NumShotgunBullets -= 1
		}
	}
}

if damaged = true {
	if invulnerabilityTime <= 0 {
		invulnerability = false
		damaged = false
		invulnerabilityTime = 50
	}
	else {
		invulnerabilityTime -= 1
	}
}

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
if weaponType == "Shield"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Shield_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Shield_OBJ_2)
}

if weaponType == "Pistols"{
	MoveSpeed = 2.5
}
if weaponType == "Shotgun"{
	MoveSpeed = 2
}
if weaponType == "Sniper"{
	MoveSpeed = 1.5
}
if weaponType == "Shield"{
	MoveSpeed = 2.5
}

if place_meeting(x, y, Enemy_OBJ) == true or place_meeting(x, y, Enemy_Bullet_OBJ) or place_meeting(x, y, Enemy_OBJ_2) == true {
	if NumLives <= 0 {
		instance_create_layer(x, y, "DEATHTEXT", DeathText)
		instance_destroy()
	}
	else if invulnerability = false {
		invulnerabilityTime = 50
		damaged = true
		invulnerability = true
		NumLives -= 1
	}
}

x = clamp(x,0, room_width);
y= clamp(y,0,room_height);