
if place_meeting(x, y, Flash_OBJ) {
	obj_stuned = true
}

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
	stunDuration = 1000
	speed = 1.7
}

Xspeed = lengthdir_x(speed, direction)
Yspeed = lengthdir_y(speed, direction)


if place_meeting(x + Xspeed, y, Wall_OBJ) == true
	{
	wallInst = instance_place(x + Xspeed, y, Wall_OBJ)
	wallInst.wallHealth -= 0.125
	Xspeed = 0
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	wallInst = instance_place(x, y + Yspeed, Wall_OBJ)
	wallInst.wallHealth -= 0.125
	Yspeed = 0
	}

if place_meeting(x, y, Bullet_OBJ) or place_meeting(x, y, Bullet_Shotgun_OBJ) == true
	{
		obj_HP -= 1
		if (obj_HP = 0){
		    if instance_exists(Player_OBJ){
			    Player_OBJ.EnemyKilled += 1
			}
			instance_destroy()
		}
	}
	
if place_meeting(x, y, Bullet_Sniper_OBJ) or place_meeting(x, y, Player_Weapon_Sword_OBJ) or place_meeting(x, y, Player_Weapon_Sword_OBJ_2) or place_meeting(x, y, Thorn_OBJ) == true
	{
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1;
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

x += Xspeed 
y += Yspeed 

	
x = clamp(x,0, room_width);
y= clamp(y,0, room_height);