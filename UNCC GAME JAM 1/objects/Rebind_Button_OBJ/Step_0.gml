/// @description Insert description here
// You can write your code in this editor
if Active = true {
	if WeaponSelected == "Hail Storm" {
		if keyboard_lastkey != vk_nokey{
			CurrencyCounter_OBJ.HailStormBind = string_upper(keyboard_lastchar)
			Button_text = CurrencyCounter_OBJ.HailStormBind
			SaveCurrency()
			Active = false
		}
	}
}