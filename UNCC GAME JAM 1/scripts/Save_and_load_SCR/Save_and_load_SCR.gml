// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save(){
	var _struct = {
		EnemyKills: Player_OBJ.EnemyKilled,
		energy: Player_OBJ.Energy,
		Coins: CurrencyCounter_OBJ.NumCoins,
	}
	
	var _string = json_stringify(_struct)
	
	var _file = file_text_open_write("save.txt")
	file_text_write_string(_file, _string)
	file_text_close(_file)
}

function Load(){
	if file_exists("save.txt") {
		var _file = file_text_open_read("save.txt")
		var _json = file_text_read_string(_file)
		var _struct = json_parse(_json)
		if instance_exists(Player_OBJ) {
			Player_OBJ.EnemyKilled = _struct.EnemyKills
			Player_OBJ.Energy = _struct.energy
		}
		if instance_exists(CurrencyCounter_OBJ) {
			CurrencyCounter_OBJ.NumCoins = _struct.Coins
		}
	}
}