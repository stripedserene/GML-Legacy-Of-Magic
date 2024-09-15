/// @description Insert description here
// You can write your code in this editor
event_inherited();

if CurrencyCounter_OBJ.BlindingLightUnlocked == false {
	Buy_Button_OBJ.WeaponSelected = "Blinding Light"
	Buy_Button_OBJ.Button_text = "Buy Blinding Light"
}
else {
	Buy_Button_OBJ.WeaponSelected = "Blinding Light"
	Buy_Button_OBJ.Button_text = "ALREADY OWNED"
}

if instance_exists(Spell_Shop_Text) == false{
	instance_create_layer((room_width/2) + 50, 143, "Instances", Spell_Shop_Text)
}
