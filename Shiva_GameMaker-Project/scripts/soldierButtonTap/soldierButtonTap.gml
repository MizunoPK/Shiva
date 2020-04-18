/// @func soldierButtonTap()
/// @description tap event function for soldier button

with (currentTarget) {
	audio_play_sound(snd_Select, 1, false)
	// if we're already selecting a target: cancel selection
	if ( selectingTarget ) {
		selectingTarget = false
		toggleMainOverlay(targetsList)
	}
	// otherwise, get ready to accept a tile as a target
	else {
		selectingTarget = true
		calcTargets(tileLocation, 1)
		toggleMainOverlay( targetsList )
	}


}