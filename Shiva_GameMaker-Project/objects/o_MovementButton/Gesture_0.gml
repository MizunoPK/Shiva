// if the user was selecting: mark that we are no longer selecting and update the button
if ( currentTarget.selectingTarget ) {
	currentTarget.selectingTarget = false
	sprite_index = moveSprite
}
// otherwise, the user wants to select a place to move to
else {
	currentTarget.selectingTarget = true
	sprite_index = xButton
}