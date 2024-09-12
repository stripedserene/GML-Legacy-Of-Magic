/// @description Insert description here
// You can write your code in this editor
event_inherited();

if instance_exists(Help_Text){
	instance_destroy(Help_Text)
}

else {
	instance_create_layer((room_width/2) + 50, 143, "Instances", Help_Text)
}