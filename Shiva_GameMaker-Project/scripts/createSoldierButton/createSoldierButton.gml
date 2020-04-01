/// @func createSoldierButton()
/// @description creates and hides a soldier button for turrets

soldierButton = instance_create_layer(x, y + sprite_height, "UI_Buttons", o_SoldierButton)
with(soldierButton) {
	currentTarget = other
	removeSprite = s_PlaceSoldier
	cancelSprite = s_X
}
instance_deactivate_object(soldierButton)
soldierButtonVisable = false
selectingTarget = false