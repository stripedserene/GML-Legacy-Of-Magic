// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Fire_damage(){
	//variables
	damageTickPerSecond = 3
	
	while (damageTickPerSecond != 0){
		if instance_exists(Enemy_OBJ) = true { 
			Enemy_OBJ.obj_HP -= 0.5
			// deal 0.5 damage per tick, tick count will go do
		}
		
		if instance_exists(Enemy_OBJ_2) = true {
			Enemy_OBJ_2.obj_HP -= 0.5
		 
		}
		damageTickPerSecond -= 1
	}
	

}