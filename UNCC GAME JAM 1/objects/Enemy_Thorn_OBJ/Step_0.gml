/// @description Insert description here
// You can write your code in this editor
lifespan -= 1

if lifespan <= 0 {
	instance_destroy()
}

if place_meeting(x, y, Player_OBJ) {
	if Player_OBJ.invulnerability == false and Player_OBJ.MagicArmorActive == false{
		Player_OBJ.invulnerabilityTime = 50
		Player_OBJ.damaged = true
		Player_OBJ.invulnerability = true
		Player_OBJ.NumLives -= 1
	}
	instance_destroy()
}