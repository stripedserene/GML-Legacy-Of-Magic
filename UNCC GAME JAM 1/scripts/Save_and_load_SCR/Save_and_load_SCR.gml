// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save(){
	var _file = file_text_open_write("save.txt")
	file_text_write_real(_file, Player_OBJ.EnemyKilled)
	file_text_close(_file)
}

function Load(){
	if file_exists("save.txt") {
		var _file = file_text_open_read("save.txt")
		Player_OBJ.EnemyKilled = file_text_read_real(_file)
		file_text_close(_file)
	}
}