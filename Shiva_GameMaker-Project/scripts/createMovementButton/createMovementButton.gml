/// @func createMovementButton
/// @description creates and hides a movement button for moveable units

moveButton = instance_create_layer(x, y + sprite_height, "UI_Buttons", o_MovementButton)
with(moveButton) {
	currentTarget = other
}
instance_deactivate_object(moveButton)
buttonVisable = false
selectingTarget = false