
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

if place_meeting(x, y, Wall_OBJ) or place_meeting(x, y, Thorn_OBJ) == true
	{
	lifespan = 1
	}
if place_meeting(x, y, Player_Weapon_Shield_OBJ) == true or place_meeting(x, y, Player_Weapon_Shield_OBJ_2) == true
	{
	Inst = instance_place(x, y, Player_Weapon_Shield_OBJ)
	Inst2 = instance_place(x, y, Player_Weapon_Shield_OBJ_2)
	if Inst != noone{
		if Inst.image_alpha != 0 {
			Player_OBJ.Energy += 1
			instance_destroy()
		}
	}
	if Inst2 != noone{
		if Inst2.image_alpha != 0 {
			Player_OBJ.Energy += 1
			instance_destroy()
		}
	}
	}

lifespan -= 1

if lifespan = 0 
	{
	instance_destroy()
	}