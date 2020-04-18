/// @func foodTap()
/// @description tap event function for the food button to feed the given soldier

if ( not global.invasionRound ) {
	audio_play_sound(snd_Select, 1, false)
	if (global.food > 0) {

		with (currentTarget) {
			hunger -= FOOD_REGEN
	
			if (hunger < 0) {
				hunger = 0
			}
		}
		global.food -= 1

	}

}