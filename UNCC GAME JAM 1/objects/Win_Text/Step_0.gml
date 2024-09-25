/// @description Insert description here
// You can write your code in this editor
lifespan -= 1

if lifespan <= 0 {
	if room == Boss_Room {
		instance_create_layer(random_range(100, 300), random_range(100, 200), "Instances", Advance_OBJ_4)
	}
	instance_destroy()
}