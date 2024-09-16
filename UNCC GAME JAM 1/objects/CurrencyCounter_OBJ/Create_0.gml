/// @description Insert description here
// You can write your code in this editor
LoadCurrency()

if instance_exists(Player_OBJ) {
	Player_OBJ.NumLives = CurrencyCounter_OBJ.PlayerHP
	Player_OBJ.Energy = CurrencyCounter_OBJ.PlayerEnergy
}