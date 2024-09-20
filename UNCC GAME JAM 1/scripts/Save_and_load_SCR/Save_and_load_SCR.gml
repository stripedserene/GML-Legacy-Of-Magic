// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveCurrency(){
	var _struct = {
		Coins: CurrencyCounter_OBJ.NumCoins,
		HailStormUnlocked: CurrencyCounter_OBJ.HailStormUnlocked,
		SandBlastUnlocked: CurrencyCounter_OBJ.SandBlastUnlocked,
		MagicSwordUnlocked: CurrencyCounter_OBJ.MagicSwordUnlocked,
		LightningBoltUnlocked: CurrencyCounter_OBJ.LightningBoltUnlocked,
		TeleportUnlocked: CurrencyCounter_OBJ.TeleportUnlocked,
		MagicArmorUnlocked: CurrencyCounter_OBJ.MagicArmorUnlocked,
		ThornWallUnlocked: CurrencyCounter_OBJ.ThornWallUnlocked,
		SelfHealUnlocked: CurrencyCounter_OBJ.SelfHealUnlocked,
		BlindingLightUnlocked: CurrencyCounter_OBJ.BlindingLightUnlocked,
		FireballUnlocked: CurrencyCounter_OBJ.FireballUnlocked,
		PlayerHP: CurrencyCounter_OBJ.PlayerHP,
		PlayerEnergy: CurrencyCounter_OBJ.PlayerEnergy,
		InvisibilityUnlocked: CurrencyCounter_OBJ.InvisibilityUnlocked,
		AbsorbUnlocked: CurrencyCounter_OBJ.AbsorbUnlocked,
		HailStormBind: CurrencyCounter_OBJ.HailStormBind,
		SandBlastBind: CurrencyCounter_OBJ.SandBlastBind,
		MagicSwordBind: CurrencyCounter_OBJ.MagicSwordBind,
		LightningBoltBind: CurrencyCounter_OBJ.LightningBoltBind,
		TeleportBind: CurrencyCounter_OBJ.TeleportBind, 
		MagicArmorBind: CurrencyCounter_OBJ.MagicArmorBind,
		ThornWallBind: CurrencyCounter_OBJ.ThornWallBind,
		SelfHealBind: CurrencyCounter_OBJ.SelfHealBind,
		BlindingLightBind: CurrencyCounter_OBJ.BlindingLightBind,
		FireballBind: CurrencyCounter_OBJ.FireballBind,
		InvisibilityBind: CurrencyCounter_OBJ.InvisibilityBind,
		PauseBind: CurrencyCounter_OBJ.PauseBind,
		LightningBoltCooldown: CurrencyCounter_OBJ.LightningBoltCooldown,
		SandBlastCooldown: CurrencyCounter_OBJ.SandBlastCooldown,
		FireballCooldown: CurrencyCounter_OBJ.FireballCooldown,
		InvisibilityCooldown: CurrencyCounter_OBJ.InvisibilityCooldown,
		MagicArmorCooldown: CurrencyCounter_OBJ.MagicArmorCooldown
	}
	
	var _string = json_stringify(_struct)
	
	var _file = file_text_open_write("saveCurrency.txt")
	file_text_write_string(_file, _string)
	file_text_close(_file)
}

function LoadCurrency(){
	if file_exists("saveCurrency.txt") {
		var _file = file_text_open_read("saveCurrency.txt")
		var _json = file_text_read_string(_file)
		var _struct = json_parse(_json)
		if instance_exists(CurrencyCounter_OBJ) {
			CurrencyCounter_OBJ.NumCoins = _struct.Coins
			CurrencyCounter_OBJ.HailStormUnlocked = _struct.HailStormUnlocked
			CurrencyCounter_OBJ.SandBlastUnlocked = _struct.SandBlastUnlocked
			CurrencyCounter_OBJ.MagicSwordUnlocked = _struct.MagicSwordUnlocked
			CurrencyCounter_OBJ.LightningBoltUnlocked = _struct.LightningBoltUnlocked
			CurrencyCounter_OBJ.TeleportUnlocked = _struct.TeleportUnlocked
			CurrencyCounter_OBJ.MagicArmorUnlocked = _struct.MagicArmorUnlocked
			CurrencyCounter_OBJ.ThornWallUnlocked = _struct.ThornWallUnlocked
			CurrencyCounter_OBJ.SelfHealUnlocked = _struct.SelfHealUnlocked
			CurrencyCounter_OBJ.BlindingLightUnlocked = _struct.BlindingLightUnlocked
			CurrencyCounter_OBJ.FireballUnlocked = _struct.FireballUnlocked
			CurrencyCounter_OBJ.PlayerHP = _struct.PlayerHP
			CurrencyCounter_OBJ.PlayerEnergy = _struct.PlayerEnergy
			CurrencyCounter_OBJ.InvisibilityUnlocked = _struct.InvisibilityUnlocked
			CurrencyCounter_OBJ.AbsorbUnlocked = _struct.AbsorbUnlocked
			CurrencyCounter_OBJ.HailStormBind = _struct.HailStormBind
			CurrencyCounter_OBJ.SandBlastBind = _struct.SandBlastBind
			CurrencyCounter_OBJ.MagicSwordBind = _struct.MagicSwordBind
			CurrencyCounter_OBJ.LightningBoltBind = _struct.LightningBoltBind
			CurrencyCounter_OBJ.TeleportBind = _struct.TeleportBind
			CurrencyCounter_OBJ.MagicArmorBind = _struct.MagicArmorBind
			CurrencyCounter_OBJ.ThornWallBind = _struct.ThornWallBind
			CurrencyCounter_OBJ.SelfHealBind = _struct.SelfHealBind
			CurrencyCounter_OBJ.BlindingLightBind = _struct.BlindingLightBind
			CurrencyCounter_OBJ.FireballBind = _struct.FireballBind
			CurrencyCounter_OBJ.InvisibilityBind = _struct.InvisibilityBind
			CurrencyCounter_OBJ.PauseBind = _struct.PauseBind
			CurrencyCounter_OBJ.FireballCooldown = _struct.FireballCooldown
			CurrencyCounter_OBJ.LightningBoltCooldown = _struct.LightningBoltCooldown
			CurrencyCounter_OBJ.MagicArmorCooldown = _struct.MagicArmorCooldown
			CurrencyCounter_OBJ.SandBlastCooldown = _struct.SandBlastCooldown
			CurrencyCounter_OBJ.InvisibilityCooldown = _struct.InvisibilityCooldown
		}
	}
}