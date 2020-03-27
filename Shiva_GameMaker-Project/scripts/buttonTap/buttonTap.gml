/// @func itemTap()
/// @description tap function for inventory buttons

if ( itemQuantity > 0 ) {
	with (owningInventory) {
		selectingTarget = true
		inventoryOpen = false
		typeBeingPlaced = other.typeBeingPlaced
		whatsBeingPlaced = other.itemName
		global.currentSelectedObject = self
		possibleTilesList = ds_list_create()
	
		// set up the soldier overlays if it's a weapon
		if (typeBeingPlaced == WEAPON_LABEL) {
			for (var i=0; i<ds_list_size(global.listOfSoldiers); i++) {
				var soldier = ds_list_find_value(global.listOfSoldiers, i)
				ds_list_add(possibleTilesList, soldier.tileLocation)
			}
		}
		// set up the free space overlays if it's a building
		else if (typeBeingPlaced = BUILDING_LABEL) {
			// TODO
			return
		}
		
		
		toggleMainOverlay(possibleTilesList)
	
	}
} 