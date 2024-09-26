/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, Explosion_OBJ) {
	Inst = instance_place(x, y, Explosion_OBJ)
	if Inst.image_alpha = 1 {
		obj_HP -= 3
	}
	if (obj_HP <= 0){
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1
		}
		instance_destroy()
	}
}

if place_meeting(x, y, Bullet_OBJ) or place_meeting(x, y, Bullet_Shotgun_OBJ) == true
	{
		obj_HP -= 1
		if (obj_HP <= 0){
			if instance_exists(Player_OBJ){
				Player_OBJ.EnemyKilled += 1
			}
			instance_destroy()
		}
	}
	
if place_meeting(x, y, Thorn_OBJ) {
	obj_HP -= 5
	if (obj_HP <= 0){
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1
		}
		instance_destroy()
	}
	
}
	
if place_meeting(x, y, Bullet_Sniper_OBJ) == true
	{
		obj_HP -= 5
	}
if place_meeting(x, y, Player_Weapon_Sword_OBJ) or place_meeting(x, y, Player_Weapon_Sword_OBJ) == true
	{
		if instance_exists(Player_OBJ){
			Player_OBJ.EnemyKilled += 1
		}
		instance_destroy()
	}

if obj_HP <= 0 {
	instance_destroy()
}