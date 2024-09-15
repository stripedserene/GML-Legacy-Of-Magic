/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Sand Blast" {
	CurrencyCounter_OBJ.SandBlastUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 1
	SaveCurrency()
}
if WeaponSelected == "Lightning Bolt" {
	CurrencyCounter_OBJ.LightningBoltUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 2
	SaveCurrency()
}
if WeaponSelected == "Magic Sword" {
	CurrencyCounter_OBJ.MagicSwordUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 3
	SaveCurrency()
}
if WeaponSelected == "Teleportation" {
	CurrencyCounter_OBJ.TeleportUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 4
	SaveCurrency()
}
if WeaponSelected == "Magic Armor" {
	CurrencyCounter_OBJ.MagicArmorUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 5
	SaveCurrency()
}
if WeaponSelected == "Thorn Wall" {
	CurrencyCounter_OBJ.ThornWallUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 6
	SaveCurrency()
}
if WeaponSelected == "Self Heal" {
	CurrencyCounter_OBJ.SelfHealUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 7
	SaveCurrency()
}
if WeaponSelected == "Blinding Light" {
	CurrencyCounter_OBJ.BlindingLightUnlocked = true 
	CurrencyCounter_OBJ.NumCoins += 8
	SaveCurrency()
}