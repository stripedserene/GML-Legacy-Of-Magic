/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, Player_OBJ) {
	room_goto(Room2)
	Player_OBJ.RoomDone = false 
	Player_OBJ.EnemyKilled = 0
	Player_OBJ.SpawnEnemies = true
	Player_OBJ.SpawnWave = true
	Player_OBJ.WaveSpawnTimer = 1000
	Player_OBJ.WaveSpawnNumber = 2
	Player_OBJ.oldWaveSpawnNumber = 2
	Player_OBJ.EnemySpawnTimer = 200
	Player_OBJ.OldEnemySpawnTimer = 200
}