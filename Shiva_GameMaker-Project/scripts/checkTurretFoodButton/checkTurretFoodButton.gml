/// @func checkTurretFoodButton()
/// @description check if the turret's food button should be displayed

with (foodButton) {
	x = other.x - (other.sprite_width / 2)
	y = other.y + other.sprite_height
}

if ( not waitingForUnit and foodButtonVisable and global.currentSelectedObject != self or (hunger == 0 and foodButtonVisable and global.currentSelectedObject == self) ) {
	instance_deactivate_object(foodButton)
	foodButtonVisable = false
}
else if (not waitingForUnit and not foodButtonVisable and global.currentSelectedObject == self and hunger > 0  ) {
	instance_activate_object(foodButton)
	foodButtonVisable = true
}