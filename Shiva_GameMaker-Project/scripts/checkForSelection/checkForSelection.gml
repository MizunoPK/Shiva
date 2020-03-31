/// @func checkForSelection()
/// @description is the inventory is waiting for a selection on the board and is provided a selection, do work

if (selectingTarget and global.currentSelectedObject != self) {
	// if we're looking to give out a soldier, check if it's a valid soldier and give them the weapon
	if (typeBeingPlaced == WEAPON_LABEL and global.currentSelectedObject.object_index == o_Soldier) {
		var soldier = global.currentSelectedObject
		// if the soldier is holding a weapon already, move it to the inventory
		if ( soldier.weapon != NO_WEAPON ) {
			updateStock( soldier.weapon, 1 )
		}
		// give the soldier the new weapon
		with (soldier) {
			changeWeapon(other.whatsBeingPlaced)
		}
		// update the stock for the weapon just given out
		updateStock(whatsBeingPlaced, -1)
	}
	// if we're placing a building, place it on the tile
	if ( typeBeingPlaced == BUILDING_LABEL and ds_list_find_index( possibleTilesList, global.currentSelectedObject ) != -1) {
		var tile = global.currentSelectedObject
		var newBuilding = placeObject( tile, objectBeingPlaced )
		global.currentSelectedObject = newBuilding
		updateStock(whatsBeingPlaced, -1)
	}

	typeBeingPlaced = NOTHING_LABEL
	whatsBeingPlaced = NOTHING_LABEL
	selectingTarget = false
	objectBeingPlaced = noone
	toggleMainOverlay(possibleTilesList)
}