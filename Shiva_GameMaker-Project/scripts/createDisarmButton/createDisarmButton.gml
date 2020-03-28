/// @func createDisarmButton
/// @description creates and hides a food button for humans

disarmButton = instance_create_layer(x + (sprite_width / 2), y + sprite_height, "UI_Buttons", o_DisarmButton)
with(disarmButton) {
	currentTarget = other
}
instance_deactivate_object(disarmButton)
disarmButtonVisable = false