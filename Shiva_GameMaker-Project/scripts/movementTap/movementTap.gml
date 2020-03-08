/// @func movementTap
/// @description what happens when the movement button is pressed


// if the user was selecting: mark that we are no longer selecting and update the button
with (currentTarget) {
	if ( selectingTarget ) {
		selectingTarget = false
		toggleTargetsDisplay()
		other.sprite_index = other.moveSprite
	}
	// otherwise, the user wants to select a place to move to
	else {
		selectingTarget = true
		calcTargets(tileLocation, movementRange)
		toggleTargetsDisplay()
		other.sprite_index = xButton
	}
}