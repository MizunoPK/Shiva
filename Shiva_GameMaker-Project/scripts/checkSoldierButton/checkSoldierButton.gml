/// @func checkTurretSoldierButton()
/// @description check if the turret's soldier button should be displayed

// update position
with (soldierButton) {
	x = other.x
	y = other.y + other.sprite_height
}

// activate/deactivate as needed
if ( not waitingForUnit and soldierButtonVisable and global.currentSelectedObject != self or (global.invasionRound and soldierButtonVisable) ) {
	instance_deactivate_object(soldierButton)
	soldierButtonVisable = false
}
else if (not waitingForUnit and not soldierButtonVisable and global.currentSelectedObject == self and not global.invasionRound ) {
	instance_activate_object(soldierButton)
	soldierButtonVisable = true
}

// update the sprite as needed
if ( soldierButtonVisable and selectingTarget ) {
	soldierButton.sprite_index = soldierButton.cancelSprite
}
else if ( soldierButtonVisable and not selectingTarget ) {
	soldierButton.sprite_index = soldierButton.removeSprite
}