/// @func checkMovement()
/// @description check if the unit has a target selected to move to, and begin the path to that target

// if we have not reached the destination yet: find the next tile to move to
if ( not isMoving and tileMovingTo != noone and tileMovingTo != tileLocation ) {
	// reset the current target
		if ( currentTarget != noone) {
			currentTarget.occupier = noone
		}
	
	// find the next tile
		calcTargets(tileLocation, 1) // get the tiles the unit can currently move to
		var previousTileIndex = ds_list_find_index(targetsList, previousTile)
		if ( previousTileIndex != -1 and ds_list_size(targetsList) > 1) {
			ds_list_delete( targetsList, previousTileIndex )
		}
	
		// if there are low priority targets, include those tiles in the target list
		if ( ds_list_size(lowPriorityEnemyTileList) != 0 ) {
			for (var i=0; i < ds_list_size(lowPriorityEnemyTileList); i++) {
				ds_list_add(targetsList, ds_list_find_value(lowPriorityEnemyTileList, i))
			}
		}
		
		currentTarget = findClosestTile(tileMovingTo) // get the target
		
		// if the target tile is occupied by an enemy, then start attacking the occupier
		if ( currentTarget.occupier != noone and isFriendly != currentTarget.occupier.isFriendly ) {
			enemyInstance = currentTarget.occupier
			tileMovingTo = noone
			currentTarget = noone
			if ( not isAttacking )
				changeAttackMode()
			direction = point_direction(x,y,enemyInstance.x,enemyInstance.y)
			return
		}
		
		// check the nearby mountables
		for ( var i=0; i < ds_list_size(mountableTiles); i++) {
			var potentialTile = ds_list_find_value(mountableTiles, i)
			if ( potentialTile == tileMovingTo ) {
				currentTarget = potentialTile
				break
			}
		}
		
	// move to the chosen tile
		isMoving = true // indicate we are moving again
		// remove the unit from the tile it was just on
		with (tileLocation ) {
			occupier = noone
		}
		// establish that the target's occupier is this unit, so that another unit doesn't move there at the same time
		if ( currentTarget.occupier == noone ) {
			currentTarget.occupier = self
		}
		// update movement range
		if (isFriendly) {
			movementRange = movementRange - 1
		}
		// make a path
		myPath = path_add()
		mp_potential_path(myPath, currentTarget.x, currentTarget.y, 2, 3, false)
		mp_potential_settings(45, 10, 3, true)
		path_start(myPath, 2, path_action_stop, true)
		
}

if (isMoving) {
	image_speed = movementMultiplier * idleSpeed
}

