with (levelButton) {
	x = other.x + other.sprite_width
	y = other.y
}

if ( levelButtonVisable and global.currentSelectedObject != self or (global.researchPoints < 20 and levelButtonVisable and global.currentSelectedObject == self) ) {
	instance_deactivate_object(levelButton)
	levelButtonVisable = false
}
else if ( not levelButtonVisable and global.currentSelectedObject == self and global.researchPoints >= 20  ) {
	instance_activate_object(levelButton)
	levelButtonVisable = true
}