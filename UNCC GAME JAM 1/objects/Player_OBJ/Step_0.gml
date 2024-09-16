Right_key = keyboard_check(ord("D"));
Left_key = keyboard_check(ord("A"));
Up_key = keyboard_check(ord("W"));
Down_key = keyboard_check(ord("S"));

Xspeed = (Right_key - Left_key) * MoveSpeed;
Yspeed = (Down_key - Up_key) * MoveSpeed;

if  keyboard_check(ord("1")) and CurrencyCounter_OBJ.HailStormUnlocked{
	weaponType = "Hail Storm"
}

if  keyboard_check(ord("2")) and CurrencyCounter_OBJ.SandBlastUnlocked {
	weaponType = "Sand Blast"
}

if  keyboard_check(ord("3")) and CurrencyCounter_OBJ.MagicSwordUnlocked{
	weaponType = "Magic Sword"
}

if  keyboard_check(ord("4")) and CurrencyCounter_OBJ.LightningBoltUnlocked{
	weaponType = "Lightning Bolt"
}

if  keyboard_check(ord("5")) and CurrencyCounter_OBJ.TeleportUnlocked{
	weaponType = "Teleportation"
}

if  keyboard_check(ord("6")) and CurrencyCounter_OBJ.MagicArmorUnlocked{
	weaponType = "Magic Armor"
}

if  keyboard_check(ord("7")) and CurrencyCounter_OBJ.ThornWallUnlocked{
	weaponType = "Thorn Wall"
}

if  keyboard_check(ord("8")) and CurrencyCounter_OBJ.SelfHealUnlocked{
	weaponType = "Self Heal"
}

if  keyboard_check(ord("9")) and CurrencyCounter_OBJ.BlindingLightUnlocked {
	weaponType = "Blinding Light"
}

if  keyboard_check(ord("0")) and CurrencyCounter_OBJ.FireballUnlocked{
	weaponType = "Fireball"
}

if  mouse_check_button_pressed(mb_right) and CurrencyCounter_OBJ.AbsorbUnlocked{
	weaponType = "Absorb"
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

EnemySpawnTimer -= 1 

EnemySpawnSide = irandom_range(1, 3)
EnemySpawnType = irandom_range(1, 3)

if EnemySpawnTimer <= 0 {
	if EnemySpawnSide = 1 {
		if EnemySpawnType == 3 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType == 2 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ)
		}
		if EnemySpawnType == 1 {
			instance_create_layer(0, random_range(0, 288), "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 2 {
		if EnemySpawnType == 3 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType == 2 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ)
		}
		if EnemySpawnType == 1 {
			instance_create_layer(390, random_range(0, 288), "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 3 {
		if EnemySpawnType == 3 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType == 2 {
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ)
		}
		if EnemySpawnType == 1{
			instance_create_layer(random_range(0, 390), 0, "Instances", Warning_OBJ_3)
		}
	}
	else if EnemySpawnSide = 4 {
		if EnemySpawnType == 3 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ_2)
		}
		if EnemySpawnType == 2 {
			instance_create_layer(random_range(0, 390), 288, "Instances", Warning_OBJ)
		}
		if EnemySpawnType == 1 {
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

if mouse_check_button_pressed(mb_left){
	if Energy >= 1 {
		if weaponType = "Hail Storm"{
			instance_create_layer(x, y, layer, Bullet_OBJ);
			Energy -= 1
		}
	}
	if Energy >= 3 {
		if weaponType = "Lightning Bolt"{
			instance_create_layer(x, y, layer, Bullet_Sniper_OBJ);
			Energy -= 5
		}
	}
	if Energy >= 5 {
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
	if Energy >= 15 {
		if weaponType = "Magic Armor" and MagicArmorActive == false{
			instance_create_layer(x, y, "Instances", Magic_Armor_OBJ)
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
			Energy -= 20
		}
	}
	if Energy >= 100 {
		if weaponType == "Self Heal" and NumLives < CurrencyCounter_OBJ.PlayerHP{
			NumLives += 1
			Energy -= 100
		}
	}
	if Energy >= 7 {
		if weaponType == "Fireball" {
			instance_create_layer(x, y, layer, Fireball_OBJ)
			Energy -= 7
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

if MagicArmorActive == true {
	MagicArmorTimer -= 1
	if Energy <= 0 {
		MagicArmorActive = false
	}
}
if MagicArmorTimer <= 0 {
	MagicArmorActive = false
	MagicArmorTimer = 500
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

if SwordActive == true {
	SwordEnergyTimer -= 1
}

if SwordEnergyTimer <= 0 {
	Energy -= 1
	SwordEnergyTimer = 75
}


if place_meeting(x, y, Enemy_OBJ) == true or place_meeting(x, y, Enemy_Bullet_OBJ) or place_meeting(x, y, Enemy_OBJ_2) == true or place_meeting(x, y, Enemy_OBJ_3) or place_meeting(x, y, Enemy_Shotgun_Bullet_OBJ) {
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