/// @description Insert description here
// You can write your code in this editor
if instance_exists(BOSS_OBJ) {
	image_xscale = (BOSS_OBJ.obj_HP)/500
}
else {
	instance_destroy()
}