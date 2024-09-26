draw_text_transformed(20, 75, "VICTORY", 5, 5, 0)
draw_text_transformed_color(20, 165, "Your foes have been vanquished, your lineage is safe...\nFor now.", 0.75, 0.75, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

if CurrencyCounter_OBJ.BeatBoss == false {
	draw_text_transformed_color(20, 195, "BOSS FIGHT mode and ENDLESS mode have been unlocked", 0.75, 0.75, 0, c_red, c_red, c_red, c_red, 1)
}