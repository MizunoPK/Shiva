/// @func openInventory()
/// @description tap function for the inventory button

with (global.inventory) {
	// if the inventory button was clicked when the inventory was already active, then close the inventory
	if ( inventoryOpen ) {
		inventoryOpen = false
	}
	// otherwise, open the inventory
	else {
		global.currentSelectedObject = self
		inventoryOpen = true
		// if we re-opened the inventory while the player was selecting an object, then turn off the selection
		if (selectingTarget) {
			selectingTarget = false
			toggleMainOverlay(possibleTilesList)
		}
	}
}