/// @description Insert description here
// You can write your code in this editor
obj_HP = 10

if place_meeting(x, y, Wall_OBJ) {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Magic_Armor_Target_OBJ)
	instance_destroy()
}