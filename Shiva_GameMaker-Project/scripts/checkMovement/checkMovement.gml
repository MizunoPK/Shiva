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
		currentTarget = findClosestTile(tileMovingTo)
	
	// move to the chosen tile
		isMoving = true // indicate we are moving again
		// remove the unit from the tile it was just on
		with (tileLocation ) {
			occupier = noone
		}
		// establish that the target's occupier is this unit, so that another unit doesn't move there at the same time
		currentTarget.occupier = self
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

