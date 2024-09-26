/// @description Insert description here
// You can write your code in this editor
if goMainMenu == false and alphavalue < 1{
 alphavalue += 0.03
}
if goMainMenu == false and alphavalue >= 1{
 alphavalue = 1
}
if keyboard_check_pressed(vk_space) {
	goMainMenu = true
}
if goMainMenu == true {
	alphavalue -= 0.02
}
if goMainMenu == true and alphavalue <= 0 {
	room_goto(Main_Menu)
}