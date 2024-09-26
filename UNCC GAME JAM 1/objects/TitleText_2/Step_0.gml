/// @description Insert description here
// You can write your code in this editor
timer -= 1 

if timer <= 0 {
	alphaval -= 0.02
}
if alphaval <= 0 {
	instance_create_layer(x, y, "Instances", TitleText)
	instance_destroy()
}