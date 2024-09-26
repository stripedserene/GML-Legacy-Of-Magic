/// @description Insert description here
// You can write your code in this editor
event_inherited();

if instance_exists(Help_Text){
	instance_destroy(Help_Text)
	instance_activate_object(Coin_Icon_OBJ)
	instance_activate_object(Coin_Text)
	instance_activate_object(Control_Button_OBJ)
	instance_activate_object(Play_Button_BOSS_OBJ)
	instance_activate_object(Play_Button_ENDLESS_OBJ)
}

else {
	instance_create_layer((room_width/2) + 50, 143, "Instances", Help_Text)
	instance_deactivate_object(Coin_Icon_OBJ)
	instance_deactivate_object(Coin_Text)
	instance_deactivate_object(Control_Button_OBJ)
	instance_deactivate_object(Play_Button_BOSS_OBJ)
	instance_deactivate_object(Play_Button_ENDLESS_OBJ)
}