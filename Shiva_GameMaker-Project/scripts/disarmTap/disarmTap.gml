/// @func disarmTap()
/// @description tap event function for the disarm button, which removes the soldier's weapon and sends it to the inventory
audio_play_sound(snd_Select, 1, false)
if ( not global.invasionRound ) {

	with (currentTarget) {
		with (global.inventory) updateStock( other.weapon, 1 )
		unarmedSetup()
	}

}