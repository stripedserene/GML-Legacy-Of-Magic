/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Player_OBJ) {
	CurrencyCounter_OBJ.NumCoins += 500
	SaveCurrency()
	room_goto(Main_Menu)
}