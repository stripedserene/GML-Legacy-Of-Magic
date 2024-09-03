if instance_exists(Player_OBJ){
	if Player_OBJ.weaponType == "Pistols"{
		draw_text_transformed(Player_OBJ.x - 1, Player_OBJ.y - 25, Player_OBJ.NumPistolBullets, 1/2, 1/2, 0)
	}
	if Player_OBJ.weaponType == "Shotgun"{
		draw_text_transformed(Player_OBJ.x - 1, Player_OBJ.y - 25, Player_OBJ.NumShotgunBullets, 1/2, 1/2, 0)
	}
	if Player_OBJ.weaponType == "Sniper"{
		draw_text_transformed(Player_OBJ.x - 1, Player_OBJ.y - 25, Player_OBJ.NumSniperBullets, 1/2, 1/2, 0)
	}
}