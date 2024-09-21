
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

lifespan -= 1

if lifespan <= 0 
	{
	instance_destroy()
	}

if instance_exists(Player_OBJ){
	if place_meeting(x, y, Wall_OBJ) == true
		{
		instance_destroy()
		}
	if place_meeting(x, y, Enemy_OBJ) or place_meeting(x, y, Enemy_OBJ_2) or place_meeting(x, y, Enemy_OBJ_3) or place_meeting(x, y, BOSS_OBJ)== true
		{
		EnemyInst1 = instance_place(x, y, Enemy_OBJ)
		EnemyInst2 = instance_place(x, y, Enemy_OBJ_2)
		EnemyInst3 = instance_place(x, y, Enemy_OBJ_3)
		BOSSInst = instance_place(x, y, BOSS_OBJ)
		if EnemyInst1 != noone {
			EnemyInst1.speed = EnemyInst1.speed/5
		}
		if EnemyInst2 != noone {
			EnemyInst2.speed = EnemyInst2.speed/5
		}
		if EnemyInst3 != noone {
			EnemyInst3.speed = EnemyInst3.speed/5
		}
		if BOSSInst != noone {
			BOSSInst.speed = 0.6
		}
		lifespan = 1
		}
}