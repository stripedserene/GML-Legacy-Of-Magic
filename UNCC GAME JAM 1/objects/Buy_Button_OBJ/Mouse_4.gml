/// @description Insert description here
// You can write your code in this editor
event_inherited();

if WeaponSelected == "Sand Blast" and global.SandBlastUnlocked == false {
	if global.NumCoins >= 3 {
		global.SandBlastUnlocked = true 
		global.NumCoins -= 3
		Button_text = "ALREADY OWNED"
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Lightning Bolt" and global.LightningBoltUnlocked == false {
	if global.NumCoins >= 5 {
		global.LightningBoltUnlocked = true 
		global.NumCoins -= 5
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Magic Sword" and global.MagicSwordUnlocked == false {
	if global.NumCoins >= 5 {
		global.MagicSwordUnlocked = true 
		global.NumCoins -= 5
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Teleportation" and global.TeleportUnlocked == false {
	if global.NumCoins >= 10 {
		global.TeleportUnlocked = true 
		global.NumCoins -= 10
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Magic Armor" and global.MagicArmorUnlocked == false {
	if global.NumCoins >= 10 {
		global.MagicArmorUnlocked = true 
		global.NumCoins -= 10
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Thorn Wall" and global.ThornWallUnlocked == false {
	if global.NumCoins >= 13 {
		global.ThornWallUnlocked = true 
		global.NumCoins -= 13
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Self Heal" and global.SelfHealUnlocked == false {
	if global.NumCoins >= 15 {
		global.SelfHealUnlocked = true 
		global.NumCoins -= 15
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Blinding Light" and global.BlindingLightUnlocked == false {
	if global.NumCoins >= 3 {
		global.BlindingLightUnlocked = true 
		global.NumCoins -= 3
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Absorb" and global.AbsorbUnlocked == false {
	if global.NumCoins >= 6 {
		global.AbsorbUnlocked = true 
		global.NumCoins -= 6
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}
if WeaponSelected == "Fireball" and global.FireballUnlocked == false {
	if global.NumCoins >= 17 {
		global.FireballUnlocked = true 
		global.NumCoins -= 17
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Heart" {
	if global.NumCoins >= 10 {
		global.PlayerHP += 1
		global.NumCoins -= 10
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Energy" {
	if global.NumCoins >= 10 {
		global.PlayerEnergy += 50
		global.NumCoins -= 10
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}

if WeaponSelected == "Invisibility" and global.InvisibilityUnlocked == false {
	if global.NumCoins >= 20 {
		global.InvisibilityUnlocked = true 
		global.NumCoins -= 20
		Button_text = "ALREADY OWNED"
		
	}
	else {
		Button_text = "YOU BROKE AS FUCK LOL"
	}
}