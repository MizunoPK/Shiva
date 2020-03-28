/// @func checkFoodButton
/// @description update the visibility of the food button when appropriate

with (foodButton) {
	x = other.x - (other.sprite_width / 2)
	y = other.y + other.sprite_height
}

if ( foodButtonVisable and global.currentSelectedObject != self or (hunger == 0 and foodButtonVisable and global.currentSelectedObject == self) ) {
	instance_deactivate_object(foodButton)
	foodButtonVisable = false
}
else if ( not foodButtonVisable and global.currentSelectedObject == self and hunger > 0  ) {
	instance_activate_object(foodButton)
	foodButtonVisable = true
}