/// @description Insert description here
// You can write your code in this editor
if wait <= 0 {
	image_alpha -= 0.05
}

wait -= 1

if image_alpha <= 0 {
	instance_destroy()
}