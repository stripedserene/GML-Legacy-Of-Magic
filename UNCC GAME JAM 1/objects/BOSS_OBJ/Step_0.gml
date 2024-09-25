
if instance_exists(Player_OBJ) == true {
	if Player_OBJ.invisible == false {
		direction = point_direction(x, y, Player_OBJ.x, Player_OBJ.y);
	}
	if Player_OBJ.invisible == true {
		direction = point_direction(x, y, Player_OBJ.lastx + random_range(-40, 40), Player_OBJ.lasty + random_range(-40, 40));
	}
}
else {
	speed = 0
}


if obj_stuned {
	stunDuration -= 1
	speed = 0
}
if stunDuration <= 0 {
	obj_stuned = false
	stunDuration = 150
	speed = 1.3
}

Xspeed = lengthdir_x(speed, direction)
Yspeed = lengthdir_y(speed, direction)

if place_meeting(x + Xspeed, y, Wall_OBJ) == true
	{
	wallInst = instance_place(x + Xspeed, y, Wall_OBJ)
	wallInst.wallHealth -= 0.75
	Xspeed = 0
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	wallInst = instance_place(x, y + Yspeed, Wall_OBJ)
	wallInst.wallHealth -= 0.25
	Yspeed = 0
	}

if place_meeting(x, y, Bullet_OBJ) or place_meeting(x, y, Bullet_Shotgun_OBJ) == true
	{
		if MagicArmorActive == false {
			obj_HP -= 1
			if (obj_HP <= 0){
			    if instance_exists(Player_OBJ){
				    Player_OBJ.EnemyKilled += 1
				}
				Player_OBJ.SpawnWave = false
				instance_destroy()
			}
		}
	}
	
if place_meeting(x, y, Thorn_OBJ) {
	if MagicArmorActive == false {
		obj_HP -= 3
		if (obj_HP <= 0){
			if instance_exists(Player_OBJ){
				Player_OBJ.EnemyKilled += 1
			}
			Player_OBJ.SpawnWave = false
			instance_destroy()
		}
	}
}
	
if place_meeting(x, y, Bullet_Sniper_OBJ) == true
	{
		if MagicArmorActive == false {
			obj_HP -= 3
		}
		
	}

if place_meeting(x, y, Explosion_OBJ) and MagicArmorActive == false{
	Inst = instance_place(x, y, Explosion_OBJ)
	if Inst.image_alpha = 1 {
		obj_HP -= 1.5
	}
	if (obj_HP <= 0){
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1
		}
		Player_OBJ.SpawnWave = false
		instance_destroy()
	}
}

if speed < 1.3{
	speed += 0.05
}

AttackTimer -= 1

if AttackTimer <= 0 and obj_stuned == false and instance_exists(Player_OBJ){
	AttackType = irandom_range(1, 4)
	if AttackType == 1 {
		BurstActive = true
	}
	if AttackType == 2 {
		if instance_exists(Player_OBJ) and Player_OBJ.invisible == false {
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
			instance_create_layer(x, y, "Instances", Enemy_Shotgun_Bullet_OBJ)
		}
		AttackTimer = 120
	}
	if AttackType == 3 and Player_OBJ.invisible == false {
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		instance_create_layer(Player_OBJ.x + random_range(-30, 30), Player_OBJ.y + random_range(-30, 30), "Instances", Enemy_Thorn_Warning_OBJ)
		AttackTimer = 120
	}
	if AttackType == 4 and Player_OBJ.invisible == false {
		instance_create_layer(x, y, "Instances", Enemy_Fireball_OBJ)
		AttackTimer = 120
	}
}

if BurstActive = true {
	ShotTimer -= 1
	if ShotTimer <= 0 {
		if instance_exists(Player_OBJ) and Player_OBJ.invisible == false {
			instance_create_layer(x, y, "Instances", Enemy_Bullet_OBJ)
		}
		ShotTimer = 20
		numShots += 1
	}
}

if numShots >= 10 {
	BurstActive = false 
	AttackTimer = 120
	numShots = 0
}

if obj_HP <= 250 and MagicArmorActivated = false {
	instance_create_layer(x, y, "Instances", Enemy_Magic_Armor_OBJ)
	MagicArmorActive = true
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Magic_Armor_Target_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Magic_Armor_Target_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Magic_Armor_Target_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Magic_Armor_Target_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Magic_Armor_Target_OBJ)
	MagicArmorActivated = true
}

if MagicArmorActive == true {
	if instance_exists(Magic_Armor_Target_OBJ) == false {
		MagicArmorActive = false 
	}
}

x += Xspeed 
y += Yspeed 

	
x = clamp(x,0, room_width);
y= clamp(y,0, room_height);