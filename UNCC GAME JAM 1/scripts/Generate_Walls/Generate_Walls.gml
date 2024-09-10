// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

volumeWalls = 0
desiredVolumeWalls = 500
function RoomGen(){
	randomize()
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Wall_OBJ)
}
