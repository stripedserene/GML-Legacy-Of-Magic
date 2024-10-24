randomize()
persistent = true

Xspeed = 0
Yspeed = 0
MoveSpeed = 2

player_x = x
player_y = y

lastx = x
lasty = y

lastSpell = ""

EnemyKilled = 0
RoomDone = false

MagicArmorActive = false 
SwordActive = false 
AbsorbActive = false 

SwordEnergyTimer = 75

MagicArmorTimer = 500
MagicArmorInvulnerability = false
MagicArmorInvulnerabilityTime = 60

invisible = false 
invisibilityTimer = 400

invulnerability = false
invulnerabilityTime = 50
damaged = false

SandBlastCooldownTimer = global.SandBlastCooldown
MagicArmorCooldownTimer = global.MagicArmorCooldown
InvisibilityCooldownTimer = global.InvisibilityCooldown
FireballCooldownTimer = global.FireballCooldown
LightningBoltCooldownTimer = global.LightningBoltCooldown
HailStormCooldownTimer = global.HailStormCooldown
NumLives = global.PlayerHP
Energy = global.PlayerEnergy

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

SpawnEnemies = true
SpawnWave = true

WaveSpawnTimer = 1000
WaveSpawnNumber = 2
oldWaveSpawnNumber = 2

// EnemySpawnTimer = 200
EnemySpawnTimer = 200
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