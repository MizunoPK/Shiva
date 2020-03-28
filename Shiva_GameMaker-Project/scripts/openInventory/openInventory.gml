/// @func openInventory()
/// @description tap function for the inventory button

with (global.inventory) {

	global.currentSelectedObject = self
	inventoryOpen = true
	
	if (selectingTarget) {
		selectingTarget = false
		toggleMainOverlay(possibleTilesList)
	}

}