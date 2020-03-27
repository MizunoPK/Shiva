/// @func checkButtons()
/// @description this step event function checks if it should be activating/deactivating buttons

if ( inventoryOpen and not buttonsActive ) {
	instance_activate_layer(INVENTORY_BUTTON_LAYER)
	buttonsActive = true
}
else if ( not inventoryOpen and buttonsActive ) {
	instance_deactivate_layer(INVENTORY_BUTTON_LAYER)
	buttonsActive = false
}