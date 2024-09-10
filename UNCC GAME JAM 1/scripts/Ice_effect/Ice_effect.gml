// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Ice_effect(){
	effectTimer = 10
	
	while (effectTimer != 0) {
		if object_exists(Enemy_OBJ) = true and (Enemy_OBJ.Xspeed != 1) and (Enemy_OBJ.Yspeed != 1) {
			Enemy_OBJ.Xspeed = Enemy_OBJ.Xspeed - 1
			Enemy_OBJ.Yspeed = Enemy_OBJ.Yspeed - 1
		}
		
		if object_exists(Enemy_OBJ_2) = true {
			Enemy_OBJ_2.Xspeed = Enemy_OBJ_2.Xspeed - 2
			Enemy_OBJ_2.Yspeed = Enemy_OBJ_2.Yspeed - 2
		}
		effectTimer -= 1
	}

}