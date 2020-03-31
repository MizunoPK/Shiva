/// @func itemTap()
/// @description tap function for inventory buttons

if ( itemQuantity > 0 and not global.invasionRound ) {
	with (owningInventory) {
		selectingTarget = true
		inventoryOpen = false
		whatsBeingPlaced = other.itemName
		typeBeingPlaced = other.typeBeingPlaced
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
			objectBeingPlaced = other.associatedObject
			// get the possible targets around the home base
			for (var i=0; i < ds_list_size(global.homeBaseNearbyTiles); i++) {
				var possibleTile = ds_list_find_value(global.homeBaseNearbyTiles, i)
				if ( possibleTile.occupier == noone ) {
					ds_list_add(possibleTilesList, possibleTile);
				}
			}
			
			// get the targets around each human on the board
			for (var i=0; i < ds_list_size(global.listOfHumans); i++) {
				var human = ds_list_find_value(global.listOfHumans, i)
				if ( human.tileMovingTo == noone ) {
					with (human) {
						calcTargets( tileLocation, 1 )
						for ( var j=0; j < ds_list_size(targetsList); j++) {
							var possibleTile = ds_list_find_value(targetsList, j)
							if ( ds_list_find_index( other.possibleTilesList, possibleTile ) == -1) {
								ds_list_add(other.possibleTilesList, possibleTile)
							}
						} 
					}
				}
			}
		}
		
		// stop if there are no possible tiles
		if ( ds_list_size(possibleTilesList) == 0) {
			typeBeingPlaced = NOTHING_LABEL
			whatsBeingPlaced = NOTHING_LABEL
			objectBeingPlaced = noone
			selectingTarget = false
			return
		}
		
		// toggle the overlay for the given list of targets
		toggleMainOverlay(possibleTilesList)
	
	}
} 