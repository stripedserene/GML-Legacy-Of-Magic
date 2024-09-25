/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord(CurrencyCounter_OBJ.PauseBind)) {
	paused = !paused
}


if paused == true {
	instance_deactivate_layer("Instances")
	instance_deactivate_layer("DEATHTEXT")
	instance_deactivate_layer("TEXT_DISPLAY_LAYER")
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	draw_set_halign(fa_left);
	if keyboard_check_pressed(ord("M")) {
		room_goto(Main_Menu)
	}
}
if paused == false {
	instance_activate_all()
	surface_free(paused_surf)
	paused_surf = -1
}

if instance_exists(Player_OBJ) == false {
	if keyboard_check_pressed(ord("M")) {
		room_goto(Main_Menu)
	}
}

if room == Boss_Room and BossSpawned == false{
	instance_create_layer(random_range(50, 350), random_range(50, 250), "Instances", Warning_BOSS_OBJ)
	BossSpawned = true
}