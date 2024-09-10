/// @description Insert description here
// You can write your code in this editor
if instance_exists(Player_OBJ){
	x = Player_OBJ.x
	y = Player_OBJ.y - 1
	if Player_OBJ.MagicArmorActive == false {
		instance_destroy()
	}
}



if active = false {
	instance_destroy()
}