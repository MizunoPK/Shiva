/// @func checkMovementButton
/// @description update the visibility of the movement button when appropriate

with (moveButton) {
	x = other.x
	y = other.y + other.sprite_height
}

if ( buttonVisable and global.currentSelectedObject != self ) {
	instance_deactivate_object(moveButton)
	buttonVisable = false
}
else if ( not buttonVisable and global.currentSelectedObject == self ) {
	instance_activate_object(moveButton)
	buttonVisable = true
}