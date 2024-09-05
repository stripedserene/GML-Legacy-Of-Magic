
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

if place_meeting(x, y, Wall_OBJ) == true
	{
	instance_destroy()
	}
if place_meeting(x, y, Player_Weapon_Shield_OBJ) == true or place_meeting(x, y, Player_Weapon_Shield_OBJ_2) == true
	{
	Player_OBJ.EnemyKilled += 10
	Player_OBJ.NumPistolBullets += 8
	Player_OBJ.NumShotgunBullets += 4
	Player_OBJ.NumSniperBullets += 5
	instance_destroy()
	}

lifespan -= 1

if lifespan = 0 
	{
	instance_destroy()
	}