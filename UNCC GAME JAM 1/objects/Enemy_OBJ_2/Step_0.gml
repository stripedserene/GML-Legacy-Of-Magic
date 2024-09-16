

if instance_exists(Player_OBJ) == true {
	direction = point_direction(x, y, Player_OBJ.x, Player_OBJ.y);
}
else {
	speed = 0
}

Xspeed = lengthdir_x(speed, direction)
Yspeed = lengthdir_y(speed, direction)

if place_meeting(x + Xspeed, y, Wall_OBJ) == true
	{
	wallInst = instance_place(x + Xspeed, y, Wall_OBJ)
	wallInst.wallHealth -= 0.25
	Xspeed = 0
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	wallInst = instance_place(x, y + Yspeed, Wall_OBJ)
	wallInst.wallHealth -= 0.25
	Yspeed = 0
	}

if place_meeting(x, y, Bullet_OBJ) or place_meeting(x, y, Bullet_Shotgun_OBJ) or place_meeting(x, y, Thorn_OBJ) == true
	{
		obj_HP -= 1
		if (obj_HP = 0){
		    if instance_exists(Player_OBJ){
			    Player_OBJ.EnemyKilled += 1
			}
			instance_destroy()
		}
		
	}
	
if place_meeting(x, y, Bullet_Sniper_OBJ) or place_meeting(x, y, Player_Weapon_Sword_OBJ) or place_meeting(x, y, Player_Weapon_Sword_OBJ_2) == true
	{
	if instance_exists(Player_OBJ){
		Player_OBJ.EnemyKilled += 1
	}
	instance_destroy()
	}

if place_meeting(x, y, Explosion_OBJ){
	Inst = instance_place(x, y, Explosion_OBJ)
	if Inst.image_alpha = 1 {
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1;
		}
		instance_destroy()
	}
}


BurstTimer -= 1

if BurstTimer <= 0 {
	BurstActive = true
}

if BurstActive = true {
	ShotTimer -= 1
	if ShotTimer <= 0 {
		instance_create_layer(x, y, "Instances", Enemy_Bullet_OBJ)
		ShotTimer = 25
		numShots += 1
	}
}

if numShots >= 3 {
	BurstActive = false 
	BurstTimer = 120
	numShots = 0
}



x += Xspeed 
y += Yspeed 

	
x = clamp(x,0, room_width);
y= clamp(y,0, room_height);