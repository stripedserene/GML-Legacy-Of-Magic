// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function RoomGen(){
	randomize()
	instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Wall_OBJ)
	
}