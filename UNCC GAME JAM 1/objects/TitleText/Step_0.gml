/// @description Insert description here
// You can write your code in this editor
if TitleText_2.alphaval <= 0 and goMainMenu == false and alphaval < 1{
	alphaval += 0.03
}
if keyboard_check_pressed(vk_space) {
	goMainMenu = true
}
if goMainMenu == true {
	alphaval -= 0.02
}
if goMainMenu == true and alphaval <= 0 {
	room_goto(Main_Menu)
}