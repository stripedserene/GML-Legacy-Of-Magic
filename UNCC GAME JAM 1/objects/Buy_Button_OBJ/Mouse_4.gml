/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Sand Blast" and CurrencyCounter_OBJ.SandBlastUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 3 {
		CurrencyCounter_OBJ.SandBlastUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 3
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Lightning Bolt" and CurrencyCounter_OBJ.LightningBoltUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 5 {
		CurrencyCounter_OBJ.LightningBoltUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 5
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Magic Sword" and CurrencyCounter_OBJ.MagicSwordUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 5 {
		CurrencyCounter_OBJ.MagicSwordUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 5
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Teleportation" and CurrencyCounter_OBJ.TeleportUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 10 {
		CurrencyCounter_OBJ.TeleportUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 10
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Magic Armor" and CurrencyCounter_OBJ.MagicArmorUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 10 {
		CurrencyCounter_OBJ.MagicArmorUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 10
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Thorn Wall" and CurrencyCounter_OBJ.ThornWallUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 13 {
		CurrencyCounter_OBJ.ThornWallUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 13
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Self Heal" and CurrencyCounter_OBJ.SelfHealUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 15 {
		CurrencyCounter_OBJ.SelfHealUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 15
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Blinding Light" and CurrencyCounter_OBJ.BlindingLightUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 3 {
		CurrencyCounter_OBJ.BlindingLightUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 3
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Absorb" and CurrencyCounter_OBJ.AbsorbUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 6 {
		CurrencyCounter_OBJ.AbsorbUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 6
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Fireball" and CurrencyCounter_OBJ.FireballUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 17 {
		CurrencyCounter_OBJ.FireballUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 17
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Heart" {
	if CurrencyCounter_OBJ.NumCoins >= 10 {
		CurrencyCounter_OBJ.PlayerHP += 1
		CurrencyCounter_OBJ.NumCoins -= 10
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Energy" {
	if CurrencyCounter_OBJ.NumCoins >= 10 {
		CurrencyCounter_OBJ.PlayerEnergy += 50
		CurrencyCounter_OBJ.NumCoins -= 10
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Invisibility" and CurrencyCounter_OBJ.InvisibilityUnlocked == false {
	if CurrencyCounter_OBJ.NumCoins >= 20 {
		CurrencyCounter_OBJ.InvisibilityUnlocked = true 
		CurrencyCounter_OBJ.NumCoins -= 20
		Button_text = "ALREADY OWNED"
		SaveCurrency()
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}