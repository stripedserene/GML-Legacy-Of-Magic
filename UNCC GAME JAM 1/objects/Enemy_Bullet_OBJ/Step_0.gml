
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

if place_meeting(x, y, Wall_OBJ) == true
	{
	lifespan = 2
	}
if place_meeting(x, y, Player_Weapon_Shield_OBJ) == true or place_meeting(x, y, Player_Weapon_Shield_OBJ_2) == true
	{
	Player_OBJ.EnemyKilled += 10
	Player_OBJ.NumPistolBullets += 20
	Player_OBJ.NumShotgunBullets += 10
	Player_OBJ.NumSniperBullets += 10
	instance_destroy()
	}

lifespan -= 1

if lifespan = 0 
	{
	instance_destroy()
	}