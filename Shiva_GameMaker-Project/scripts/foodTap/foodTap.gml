/// @func foodTap()
/// @description tap event function for the food button to feed the given soldier

if (global.food > 0) {

	with (currentTarget) {
		hunger -= FOOD_REGEN
	
		if (hunger < 0) {
			hunger = 0
		}
	}
	global.food -= 1

}