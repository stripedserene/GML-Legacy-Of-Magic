/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Hail Storm" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.HailStormBind = string_upper(keyboard_lastchar)
		Button_text = CurrencyCounter_OBJ.HailStormBind
		SaveCurrency()
	}
}