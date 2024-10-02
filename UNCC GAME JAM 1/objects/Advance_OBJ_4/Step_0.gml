/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Player_OBJ) {
	global.NumCoins += 500
	global.BeatBoss = true
	SaveCurrency()
	room_goto(Main_Menu)
}