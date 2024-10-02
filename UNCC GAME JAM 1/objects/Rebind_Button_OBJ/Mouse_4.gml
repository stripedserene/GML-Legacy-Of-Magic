/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Hail Storm" {
	if keyboard_lastkey != vk_nokey{
		global.HailStormBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Hail Storm: " + global.HailStormBind
		
	}
}
if WeaponSelected == "Sand Blast" {
	if keyboard_lastkey != vk_nokey{
		global.SandBlastBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Sand Blast: " + global.SandBlastBind
		
	}
}
if WeaponSelected == "Magic Sword" {
	if keyboard_lastkey != vk_nokey{
		global.MagicSwordBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Magic Sword: " + global.MagicSwordBind
		
	}
}
if WeaponSelected == "Lightning Bolt" {
	if keyboard_lastkey != vk_nokey{
		global.LightningBoltBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Lightning Bolt: " + global.LightningBoltBind
		
	}
}
if WeaponSelected == "Teleportation" {
	if keyboard_lastkey != vk_nokey{
		global.TeleportBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Teleportation: " + global.TeleportBind
		
	}
}
if WeaponSelected == "Magic Armor" {
	if keyboard_lastkey != vk_nokey{
		global.MagicArmorBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Magic Armor: " + global.MagicArmorBind
		
	}
}
if WeaponSelected == "Thorn Wall" {
	if keyboard_lastkey != vk_nokey{
		global.ThornWallBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Thorn Wall: " + global.ThornWallBind
		
	}
}
if WeaponSelected == "Self Heal" {
	if keyboard_lastkey != vk_nokey{
		global.SelfHealBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Self Heal: " + global.SelfHealBind
		
	}
}
if WeaponSelected == "Blinding Light" {
	if keyboard_lastkey != vk_nokey{
		global.BlindingLightBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Blinding Light: " + global.BlindingLightBind
		
	}
}
if WeaponSelected == "Fireball" {
	if keyboard_lastkey != vk_nokey{
		global.FireballBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Fireball: " + global.FireballBind
		
	}
}
if WeaponSelected == "Invisibility" {
	if keyboard_lastkey != vk_nokey{
		global.InvisibilityBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Invisibility: " + global.InvisibilityBind
		
	}
}
if WeaponSelected == "Pause" {
	if keyboard_lastkey != vk_nokey{
		global.PauseBind = string_upper(keyboard_lastchar)
		Button_text = "Rebind Pause Key: " + global.PauseBind
		
	}
}