/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if Buy_Button_OBJ.WeaponSelected == "Sand Blast" {
	draw_text(x, y, "Shoots a shotgun like\nblast of sand towards\nyour enemy good at\nclose range\n\ncosts 5 energy to use\ncosts 3 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Lightning Bolt" {
	draw_text(x, y, "Shoots a fast moving\nbolt of lightning that\ndoes high damage and\npierces enemies and walls\n\ncosts 3 energy to use\ncosts 5 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Magic Sword" {
	draw_text(x, y, "A magic sword that deals\nhigh damage to enemies\nyou hit with it\nbut drains you energy as you\nhold it\ncosts 5 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Teleportation" {
	draw_text(x, y, "Instantly teleport to\nwherever you are aiming\nyour mouse\n\ncosts 7 energy to use\ncosts 10 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Magic Armor" {
	draw_text(x, y, "Create a barrier around\nyou that uses energy\nto absorb damage\n\ncosts 15 energy to use\ncosts 10 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Thorn Wall" {
	draw_text(x, y, "Summons a bunch of thorns\nin the area where you\nare aiming your mouse\nthat deals damage to enemies\nand blocks enemy bullets\n\ncosts 20 energy to use\ncosts 13 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Self Heal" {
	draw_text(x, y, "Uses energy to heal 1 heart\n\ncosts 100 energy to use\ncosts 15 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Blinding Light" {
	draw_text(x, y, "INDEV\n\ncosts X energy to use\ncosts 3 coins")
}
if Buy_Button_OBJ.WeaponSelected == "Absorb" {
	draw_text(x, y, "Absorb enemy projectiles to\ngain energy\n\ncosts 6 coins")
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)