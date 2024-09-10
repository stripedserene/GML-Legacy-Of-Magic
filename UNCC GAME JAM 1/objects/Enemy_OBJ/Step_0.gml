speed = 1

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
	
if place_meeting(x, y, Bullet_Sniper_OBJ) == true
	{
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1;
		}
		instance_destroy()
	}
	

x += Xspeed 
y += Yspeed 

	
x = clamp(x,0, room_width);
y= clamp(y,0, room_height);