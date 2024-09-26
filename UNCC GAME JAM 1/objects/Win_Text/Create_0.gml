/// @description Insert description here
// You can write your code in this editor
lifespan = 500

if instance_exists(Enemy_OBJ) {
	instance_destroy(Enemy_OBJ)
}
if instance_exists(Enemy_OBJ_2) {
	instance_destroy(Enemy_OBJ_2)
}
if instance_exists(Enemy_OBJ_3) {
	instance_destroy(Enemy_OBJ_3)
}
if instance_exists(Warning_OBJ) {
	instance_destroy(Warning_OBJ)
}
if instance_exists(Warning_OBJ_2) {
	instance_destroy(Warning_OBJ_2)
}
if instance_exists(Warning_OBJ_3) {
	instance_destroy(Warning_OBJ_3)
}
if instance_exists(Player_OBJ) {
	Player_OBJ.RoomDone = true
}