randomize()

Xspeed = 0
Yspeed = 0
MoveSpeed = 2

player_x = x
player_y = y

lastx = x
lasty = y
lastSpell = ""

EnemyKilled = 0

MagicArmorActive = false 
SwordActive = false 

SwordEnergyTimer = 75

MagicArmorTimer = 500
MagicArmorInvulnerability = false
MagicArmorInvulnerabilityTime = 60

invisible = false 
invisibilityTimer = 400

invulnerability = false
invulnerabilityTime = 50
damaged = false

instance_create_layer(x, y, "Instances", CurrencyCounter_OBJ)
SandBlastCooldownTimer = CurrencyCounter_OBJ.SandBlastCooldown
MagicArmorCooldownTimer = CurrencyCounter_OBJ.MagicArmorCooldown
InvisibilityCooldownTimer = CurrencyCounter_OBJ.InvisibilityCooldown
FireballCooldownTimer = CurrencyCounter_OBJ.FireballCooldown
LightningBoltCooldownTimer = CurrencyCounter_OBJ.LightningBoltCooldown
HailStormCooldownTimer = CurrencyCounter_OBJ.HailStormCooldown
NumLives = CurrencyCounter_OBJ.PlayerHP
Energy = CurrencyCounter_OBJ.PlayerEnergy

SandBlastCooldownActive = false
MagicArmorCooldownActive = false
InvisibilityCooldownActive = false
FireballCooldownActive = false
LightningBoltCooldownActive = false 
HailStormCooldownActive = false


instance_create_layer(random_range(0, 400), random_range(0, 300), "Instances", Bullet_Pickup_OBJ)

BulletSpawnTimer = 300
OldBulletSpawnTimer = 300

HeartSpawnTimer = 2000
OldHeartSpawnTimer = 2000

WaveSpawnTimer = 10001000
WaveSpawnNumber = 2
oldWaveSpawnNumber = 2

// EnemySpawnTimer = 200
EnemySpawnTimer = 200200200
OldEnemySpawnTimer = 200

weaponType = ""

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