/// @func checkMovementButton
/// @description update the visibility of the movement button when appropriate

with (moveButton) {
	x = other.x
	y = other.y + other.sprite_height
}

if ( moveButtonVisable and global.currentSelectedObject != self ) {
	instance_deactivate_object(moveButton)
	moveButtonVisable = false
}
else if ( not moveButtonVisable and global.currentSelectedObject == self ) {
	instance_activate_object(moveButton)
	moveButtonVisable = true
}