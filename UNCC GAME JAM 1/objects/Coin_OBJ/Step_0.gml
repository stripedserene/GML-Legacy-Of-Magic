if place_meeting(x, y, Player_OBJ) {
	CurrencyCounter_OBJ.NumCoins += 1
	SaveCurrency()
	instance_destroy()
}

if place_meeting(x, y, Wall_OBJ) == true
	{
	instance_destroy()
	instance_create_layer(random_range(0, 400), random_range(0, 300), "Instances", Coin_OBJ)
	}

lifespan -= 1

if lifespan <= 0{
	instance_destroy()
}