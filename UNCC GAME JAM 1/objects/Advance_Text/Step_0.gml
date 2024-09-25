/// @description Insert description here
// You can write your code in this editor
lifespan -= 1

if lifespan <= 0 {
	if room == Room1 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Advance_OBJ)
	}
	if room == Room2 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Advance_OBJ_2)
	}
	if room == Room3 {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Advance_OBJ_3)
	}
	instance_destroy()
}