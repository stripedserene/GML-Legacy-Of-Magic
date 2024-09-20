Right_key = keyboard_check(ord("D"));
Left_key = keyboard_check(ord("A"));
Up_key = keyboard_check(ord("W"));
Down_key = keyboard_check(ord("S"));

Xspeed = (Right_key - Left_key) * MoveSpeed;
Yspeed = (Down_key - Up_key) * MoveSpeed;

if  keyboard_check(ord(CurrencyCounter_OBJ.HailStormBind)) and CurrencyCounter_OBJ.HailStormUnlocked{
	weaponType = "Hail Storm"
	lastSpell = "Hail Storm"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.SandBlastBind)) and CurrencyCounter_OBJ.SandBlastUnlocked {
	weaponType = "Sand Blast"
	lastSpell = "Sand Blast"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.MagicSwordBind)) and CurrencyCounter_OBJ.MagicSwordUnlocked{
	weaponType = "Magic Sword"
	lastSpell = "Magic Sword"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.LightningBoltBind)) and CurrencyCounter_OBJ.LightningBoltUnlocked{
	weaponType = "Lightning Bolt"
	lastSpell = "Lightning Bolt"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.TeleportBind)) and CurrencyCounter_OBJ.TeleportUnlocked{
	weaponType = "Teleportation"
	lastSpell = "Teleportation"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.MagicArmorBind)) and CurrencyCounter_OBJ.MagicArmorUnlocked{
	weaponType = "Magic Armor"
	lastSpell = "Magic Armor"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.ThornWallBind)) and CurrencyCounter_OBJ.ThornWallUnlocked{
	weaponType = "Thorn Wall"
	lastSpell = "Thorn Wall"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.SelfHealBind)) and CurrencyCounter_OBJ.SelfHealUnlocked{
	weaponType = "Self Heal"
	lastSpell = "Self Heal"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.BlindingLightBind)) and CurrencyCounter_OBJ.BlindingLightUnlocked {
	weaponType = "Blinding Light"
	lastSpell = "Blinding Light"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.FireballBind)) and CurrencyCounter_OBJ.FireballUnlocked{
	weaponType = "Fireball"
	lastSpell = "Fireball"
}

if  keyboard_check(ord(CurrencyCounter_OBJ.InvisibilityBind)) and CurrencyCounter_OBJ.InvisibilityUnlocked{
	weaponType = "Invisibility"
	lastSpell = "Invisibility"
}

if  mouse_check_button_pressed(mb_right) and CurrencyCounter_OBJ.AbsorbUnlocked{
	weaponType = "Absorb"
}

if  mouse_check_button_released(mb_right) and CurrencyCounter_OBJ.AbsorbUnlocked{
	weaponType = lastSpell
}


if place_meeting(x + Xspeed, y, Wall_OBJ) == true
	{
	Xspeed = 0;
	}
if place_meeting(x, y + Yspeed, Wall_OBJ) == true
	{
	Yspeed = 0;
	}

x += Xspeed;
y += Yspeed;


BulletSpawnTimer -= 1

if BulletSpawnTimer <= 0 {
	BulletType = irandom_range(1, 4)
	if BulletType == 1 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_OBJ)
	}
	if BulletType == 2 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_Shotgun_OBJ)
	}
	if BulletType == 3 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Bullet_Pickup_Sniper_OBJ)
	}
	if BulletType == 4 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Coin_OBJ)
	}
	if OldBulletSpawnTimer > 150 {
		BulletSpawnTimer = OldBulletSpawnTimer - (OldBulletSpawnTimer / 5)
		OldBulletSpawnTimer = BulletSpawnTimer
	}
	else {
		BulletSpawnTimer = OldBulletSpawnTimer
	}
}

HeartSpawnTimer -= 1

if HeartSpawnTimer <= 0 {
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Heart_OBJ)
	HeartSpawnTimer = 1000 + (OldHeartSpawnTimer / 4)
	OldHeartSpawnTimer = HeartSpawnTimer
}

WaveSpawnTimer -= 1 

if WaveSpawnTimer <= 0 {
	EnemySpawnTimer = 0 
	WaveSpawnNumber -= 1
}
if WaveSpawnNumber <= 0 {
	WaveSpawnNumber = oldWaveSpawnNumber
	oldWaveSpawnNumber += 1
	WaveSpawnTimer = 1000
}

EnemySpawnTimer -= 1 

EnemySpawnSide = irandom_range(1, 4)
EnemySpawnType = irandom_range(1, 100)

if EnemySpawnTimer <= 0 {
	if EnemySpawnSide = 1 {
		if EnemySpawnType > 60 and EnemySpawnType <= 80 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType <= 60 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ)
		}
		if EnemySpawnType > 80 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 2 {
		if EnemySpawnType > 60 and EnemySpawnType <= 80 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType <= 60 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ)
		}
		if EnemySpawnType > 80 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 3 {
		if EnemySpawnType > 60 and EnemySpawnType <= 80 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType <= 60 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ)
		}
		if EnemySpawnType > 80 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 4 {
		if EnemySpawnType > 60 and EnemySpawnType <= 80 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType <= 60 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ)
		}
		if EnemySpawnType > 80 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ_3)
		}
	}
	if OldEnemySpawnTimer > 100 {
		EnemySpawnTimer = OldEnemySpawnTimer - (OldEnemySpawnTimer / 5)
		OldEnemySpawnTimer = EnemySpawnTimer
	}
	else {
		EnemySpawnTimer = OldEnemySpawnTimer
	}
}

if mouse_check_button(mb_left) and HailStormCooldownActive = false{
	if Energy >= 1 {
		if weaponType = "Hail Storm"{
			instance_create_layer(x, y, layer, Bullet_OBJ);
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			HailStormCooldownActive = true
			Energy -= 1
		}
	}
}

if mouse_check_button_pressed(mb_left){
	if Energy >= 3 and LightningBoltCooldownActive == false{
		if weaponType = "Lightning Bolt"{
			instance_create_layer(x, y, layer, Bullet_Sniper_OBJ);
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			LightningBoltCooldownActive = true
			Energy -= 5
		}
	}
	if Energy >= 5 and SandBlastCooldownActive == false {
		if weaponType = "Sand Blast"{
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			instance_create_layer(x, y, layer, Bullet_Shotgun_OBJ);
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			SandBlastCooldownActive = true
			Energy -= 3
		}
	}
	if Energy >= 7 {
		if weaponType = "Teleportation"{
			x = mouse_x
			y = mouse_y
			Energy -= 7
		}
	}
	if Energy >= 15 and MagicArmorCooldownActive == false{
		if weaponType = "Magic Armor" and MagicArmorActive == false{
			instance_create_layer(x, y, "Instances", Magic_Armor_OBJ)
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			Energy -= 15
			MagicArmorActive = true
		}
	}
	if Energy >= 20 {
		if weaponType = "Thorn Wall"{
			instance_create_layer(mouse_x, mouse_y, "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			instance_create_layer(mouse_x + random_range(-30, 30), mouse_y + random_range(-30, 30), "Instances", Thorn_OBJ)
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			Energy -= 20
		}
	}
	if Energy >= 100 {
		if weaponType == "Self Heal" and NumLives < CurrencyCounter_OBJ.PlayerHP{
			NumLives += 1
			Energy -= 100
		}
	}
	if Energy >= 7 and FireballCooldownActive == false {
		if weaponType == "Fireball" {
			instance_create_layer(x, y, layer, Fireball_OBJ)
			if invisible == true {
				invisible = false
				invisibilityTimer = 400
				InvisibilityCooldownActive = true
				image_alpha = 1
			}
			FireballCooldownActive = true
			Energy -= 7
		}
	}
	if Energy >= 8 and InvisibilityCooldownActive == false and invisible == false {
		if weaponType == "Invisibility" {
			if invisible == false {
				invisible = true
				lastx = x
				lasty = y
				image_alpha = 0.3
				invisibilityTimer = 400
			}
			if invisible == true {
				invisibilityTimer = 400
			}
			Energy -= 8
		}
	}
}

if damaged = true {
	if invulnerabilityTime <= 0 {
		invulnerability = false
		damaged = false
		invulnerabilityTime = 50
	}
	else {
		invulnerabilityTime -= 1
	}
}

if HailStormCooldownActive == true {
	HailStormCooldownTimer -= 1
}
if HailStormCooldownTimer <= 0 {
	HailStormCooldownActive = false 
	HailStormCooldownTimer = CurrencyCounter_OBJ.HailStormCooldown
}

if FireballCooldownActive == true {
	FireballCooldownTimer -= 1
}
if FireballCooldownTimer <= 0 {
	FireballCooldownActive = false 
	FireballCooldownTimer = CurrencyCounter_OBJ.FireballCooldown
}

if InvisibilityCooldownActive == true {
	InvisibilityCooldownTimer -= 1
}
if InvisibilityCooldownTimer <= 0 {
	InvisibilityCooldownActive = false 
	InvisibilityCooldownTimer = CurrencyCounter_OBJ.InvisibilityCooldown
}

if LightningBoltCooldownActive == true {
	LightningBoltCooldownTimer -= 1
}
if LightningBoltCooldownTimer <= 0 {
	LightningBoltCooldownActive = false
	LightningBoltCooldownTimer = CurrencyCounter_OBJ.LightningBoltCooldown
}

if MagicArmorCooldownActive == true {
	MagicArmorCooldownTimer -= 1
}
if MagicArmorCooldownTimer <= 0 {
	MagicArmorCooldownActive = false 
	MagicArmorCooldownTimer = CurrencyCounter_OBJ.MagicArmorCooldown
}
if SandBlastCooldownActive == true {
	SandBlastCooldownTimer -= 1
}
if SandBlastCooldownTimer <= 0 {
	SandBlastCooldownActive = false 
	SandBlastCooldownTimer = CurrencyCounter_OBJ.SandBlastCooldown
}

if MagicArmorActive == true {
	MagicArmorTimer -= 1
	if Energy <= 0 {
		MagicArmorActive = false
	}
}

if invisible == true {
	invisibilityTimer -= 1
}

if invisibilityTimer <= 0 {
	image_alpha = 1
	invisible = false 
	invisibilityTimer = 400
	InvisibilityCooldownActive = true
}

if MagicArmorTimer <= 0 {
	MagicArmorActive = false
	MagicArmorTimer = 500
	MagicArmorCooldownActive = true
}

if weaponType == "Sand Blast"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Shotgun_OBJ_2)
}

if weaponType == "Hail Storm"{
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_OBJ_2)
}
if weaponType == "Lightning Bolt"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Sniper_OBJ_2)
}
if weaponType == "Absorb"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Shield_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Shield_OBJ_2)
}

if weaponType == "Magic Armor"{
	instance_create_layer(x, y, "Instances", Player_Spell_Magic_Armor_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Magic_Armor_OBJ_2)
}

if weaponType == "Teleportation"{
	instance_create_layer(x, y, "Instances", Player_Spell_Teleport_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Teleport_OBJ_2)
}


if weaponType == "Magic Sword"{
	instance_create_layer(x, y, "Instances", Player_Weapon_Sword_OBJ)
	instance_create_layer(x, y, "Instances", Player_Weapon_Sword_OBJ_2)
	SwordActive = true
}
else {
	SwordActive = false 
}

if weaponType == "Thorn Wall"{
	instance_create_layer(x, y, "Instances", Player_Spell_Thorns_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Thorns_OBJ_2)
}

if weaponType == "Self Heal"{
	instance_create_layer(x, y, "Instances", Player_Spell_Heal_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Heal_OBJ_2)
}

if weaponType == "Fireball"{
	instance_create_layer(x, y, "Instances", Player_Spell_Fireball_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Fireball_OBJ_2)
}

if weaponType == "Blinding Light"{
	instance_create_layer(x, y, "Instances", Player_Spell_Blinding_Light_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Blinding_Light_OBJ_2)
}

if weaponType == "Invisibility"{
	instance_create_layer(x, y, "Instances", Player_Spell_Invisibility_OBJ)
	instance_create_layer(x, y, "Instances", Player_Spell_Invisibility_OBJ_2)
}

if SwordActive == true {
	SwordEnergyTimer -= 1
}

if SwordEnergyTimer <= 0 {
	Energy -= 1
	SwordEnergyTimer = 75
}


if place_meeting(x, y, Enemy_OBJ) == true or place_meeting(x, y, Enemy_Bullet_OBJ) or place_meeting(x, y, Enemy_OBJ_2) == true or place_meeting(x, y, Enemy_OBJ_3) or place_meeting(x, y, Enemy_Shotgun_Bullet_OBJ) {
	if invisible == false {
		if NumLives <= 0 {
			instance_create_layer(x, y, "DEATHTEXT", DeathText)
			instance_destroy()
		}
		else if invulnerability == false and MagicArmorActive == false{
			invulnerabilityTime = 50
			damaged = true
			invulnerability = true
			NumLives -= 1
		}
		if MagicArmorActive == true and MagicArmorInvulnerability == false{
			Energy -= 4
			MagicArmorInvulnerability = true
			MagicArmorInvulnerabilityTime = 60
		}
	}
}

if MagicArmorInvulnerabilityTime <= 0 {
	MagicArmorInvulnerability = false 
	MagicArmorInvulnerabilityTime = 60
}

if MagicArmorInvulnerability = true {
	MagicArmorInvulnerabilityTime -= 1
}

if Energy < 0 {
	Energy = 0
}

x = clamp(x,0, room_width);
y= clamp(y,0,room_height);