/// @func checkMovementButton
/// @description update the visibility of the movement button when appropriate

if ( not buttonVisable and global.currentSelectedObject == self ) {
	instance_activate_object(moveButton)
	buttonVisable = true
}
if ( buttonVisable and global.currentSelectedObject != self or hasMoved ) {
	instance_deactivate_object(moveButton)
	buttonVisable = false
}