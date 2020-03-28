/// @func createFoodButton
/// @description creates and hides a food button for humans

foodButton = instance_create_layer(x - (sprite_width / 2), y + sprite_height, "UI_Buttons", o_FoodButton)
with(foodButton) {
	currentTarget = other
}
instance_deactivate_object(foodButton)
foodButtonVisable = false