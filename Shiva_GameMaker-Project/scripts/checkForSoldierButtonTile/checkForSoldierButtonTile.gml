/// @func checkForSoldierButtonTile()
/// @description if we're selecting a tile, check if we've been provided a tile

if ( selectingTarget and global.currentSelectedObject != self ) {
	var otherTile = global.currentSelectedObject
	// if it's a valid tile, place the soldier there
	if ( ds_list_find_index(targetsList, otherTile) != -1 ) {
		// place the soldier
		instance_activate_object(soldierInstance)
		soldierInstance.tileLocation = otherTile
		soldierInstance.x = otherTile.x
		soldierInstance.y = otherTile.y
		otherTile.occupier = soldierInstance
		with (soldierInstance) exploreTile()
		global.currentSelectedObject = soldierInstance
		soldierInstance.hunger = hunger
	
		// remove the soldier from the turret
		if ( name == STANDARD_TURRET ) {
			standardTurretSetup()
		}
		else if ( name == CANNON_TURRET ) {
			cannonTurretSetup()
		}
	}

	selectingTarget = false
	toggleMainOverlay(targetsList)
}