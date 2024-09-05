speed = 1
health = 4

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
	Xspeed = 0;
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	Yspeed = 0;
	}

if place_meeting(x, y, Bullet_OBJ) or place_meeting(x, y, Bullet_Shotgun_OBJ) or place_meeting(x, y, Bullet_Sniper_OBJ) == true
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