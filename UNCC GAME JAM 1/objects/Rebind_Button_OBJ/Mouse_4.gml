/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Hail Storm" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.HailStormBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Hail Storm: " + CurrencyCounter_OBJ.HailStormBind
		SaveCurrency()
	}
}
if WeaponSelected == "Sand Blast" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.SandBlastBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Sand Blasgt: " + CurrencyCounter_OBJ.SandBlastBind
		SaveCurrency()
	}
}
