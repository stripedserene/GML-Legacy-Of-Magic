/// @description Insert description here
// You can write your code in this editor
if instance_exists(BOSS_OBJ) {
	image_xscale = (BOSS_OBJ.obj_HP)/1000
}
else {
	instance_destroy()
}