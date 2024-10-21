/// @description Insert description here
// You can write your code in this editor
event_inherited();

if instance_exists(Help_Text){
	instance_destroy(Help_Text)
	instance_activate_object(Coin_Icon_OBJ)
	instance_activate_object(Coin_Text)
	instance_activate_object(inst_7E9D4BD1)
	instance_activate_object(inst_68161376)
	instance_activate_object(inst_14B71C1D)
}

else {
	instance_create_layer((room_width/2) + 50, 143, "Instances", Help_Text)
	instance_deactivate_object(Coin_Icon_OBJ)
	instance_deactivate_object(Coin_Text)
	instance_deactivate_object(inst_7E9D4BD1)
	instance_deactivate_object(inst_68161376)
	instance_deactivate_object(inst_14B71C1D)
}