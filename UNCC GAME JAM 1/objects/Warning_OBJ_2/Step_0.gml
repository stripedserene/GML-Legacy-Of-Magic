/// @description Insert description here
// You can write your code in this editor
Lifespan -= 1

if Lifespan <= 0 {
	instance_create_layer(x, y, "Instances", Enemy_OBJ_2)
	instance_destroy()
}