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
		Button_text = "Rebind Sand Blast: " + CurrencyCounter_OBJ.SandBlastBind
		SaveCurrency()
	}
}
if WeaponSelected == "Magic Sword" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.MagicSwordBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Magic Sword: " + CurrencyCounter_OBJ.MagicSwordBind
		SaveCurrency()
	}
}
if WeaponSelected == "Lightning Bolt" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.LightningBoltBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Lightning Bolt: " + CurrencyCounter_OBJ.LightningBoltBind
		SaveCurrency()
	}
}
if WeaponSelected == "Teleportation" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.TeleportBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Teleportation: " + CurrencyCounter_OBJ.TeleportBind
		SaveCurrency()
	}
}
if WeaponSelected == "Magic Armor" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.MagicArmorBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Magic Armor: " + CurrencyCounter_OBJ.MagicArmorBind
		SaveCurrency()
	}
}
if WeaponSelected == "Thorn Wall" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.ThornWallBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Thorn Wall: " + CurrencyCounter_OBJ.ThornWallBind
		SaveCurrency()
	}
}
if WeaponSelected == "Self Heal" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.SelfHealBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Self Heal: " + CurrencyCounter_OBJ.SelfHealBind
		SaveCurrency()
	}
}
if WeaponSelected == "Blinding Light" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.BlindingLightBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Blinding Light: " + CurrencyCounter_OBJ.BlindingLightBind
		SaveCurrency()
	}
}
if WeaponSelected == "Fireball" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.FireballBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Fireball: " + CurrencyCounter_OBJ.FireballBind
		SaveCurrency()
	}
}
if WeaponSelected == "Invisibility" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.InvisibilityBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Invisibility: " + CurrencyCounter_OBJ.InvisibilityBind
		SaveCurrency()
	}
}
if WeaponSelected == "Pause" {
	if keyboard_lastkey != vk_nokey{
		CurrencyCounter_OBJ.PauseBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Pause Key: " + CurrencyCounter_OBJ.PauseBind
		SaveCurrency()
	}
}