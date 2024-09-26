/// @description Insert description here
// You can write your code in this editor
changeTextTimer -= 1

if changeTextTimer <= 0 {
	textalpha -= 0.03
}

if textalpha <= 0 {
	text = irandom_range(1, 12)
	while array_contains(textdone, text) {
		text = irandom_range(1, 12)
	}
	array_push(textdone, text)
	if array_length(textdone) >= 11 {
		textdone = []
	}
	changeTextTimer = 250
	textChange = true
}

if textChange == true {
	textalpha += 0.03
}

if textalpha >= 1 {
	textChange = false 
}