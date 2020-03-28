/// @func checkDisarmButton()
/// @description update the visibility of the disarm button when appropriate



with (disarmButton) {
	x = other.x + (other.sprite_width / 2)
	y = other.y + other.sprite_height
}

if ( disarmButtonVisable and global.currentSelectedObject != self or ( weapon == NO_WEAPON and disarmButtonVisable and global.currentSelectedObject == self) ) {
	instance_deactivate_object(disarmButton)
	disarmButtonVisable = false
}
else if ( not disarmButtonVisable and global.currentSelectedObject == self and weapon != NO_WEAPON ) {
	instance_activate_object(disarmButton)
	disarmButtonVisable = true
}