/// @func checkMovement()
/// @description check if the unit has a target selected to move to, and begin the path to that target
/*
if (path_position == 1 and isMoving) {
	image_speed = idleSpeed
	isMoving = false
	tileLocation = currentTarget
}
else if ( not isMoving and currentTarget != noone and currentTarget != tileLocation and object_get_parent(currentTarget.object_index) == obj_Tile) {
	// remove this object from the tile it was previously occupying
	with (tileLocation) {
		occupier = noone
	}
	// update movement range
	movementRange = movementRange - ds_list_find_value(targetsDistanceList, ds_list_find_index(targetsList, currentTarget) )
	
	myPath = path_add()
	mp_potential_path(myPath, currentTarget.x, currentTarget.y, 2, 3, false)
	mp_potential_settings(45, 10, 3, true)
	path_start(myPath, 2, path_action_stop, true)
	isMoving = true
}*/
// if we have not reached the destination yet: find the next tile to move to
if ( not isMoving and tileMovingTo != noone and tileMovingTo != tileLocation ) {
	// find the next tile
		calcTargets(tileLocation, 1) // get the tiles the unit can currently move to
		currentTarget = noone
		var distance = -1
		// find the tile with the smallest distance to the tile being moved to
		for (var i=0; i < ds_list_size(targetsList); i++ ) {
			var potentialTarget = ds_list_find_value(targetsList, i)
			// if we found our end location, ignore the rest of the tiles
			if ( potentialTarget == tileMovingTo ) {
				currentTarget = tileMovingTo
				break
			}
			// check the tile's length to the end tile
			potentialLength = 0
			with (potentialTarget) {
				other.potentialLength = distance_to_object(other.tileMovingTo)
			}
			if ( distance == -1 or potentialLength < distance ) {
				distance = potentialLength
				currentTarget = potentialTarget
			}
		}
	
	// move to the chosen tile
		isMoving = true // indicate we are moving again
		// remove the unit from the tile it was just on
		with (tileLocation ) {
			occupier = noone
		}
		movementRange = movementRange - 1 // update movement range
		// make a path
		myPath = path_add()
		mp_potential_path(myPath, currentTarget.x, currentTarget.y, 2, 3, false)
		mp_potential_settings(45, 10, 3, true)
		path_start(myPath, 2, path_action_stop, true)
		
}

if (isMoving) {
	image_speed = movementMultiplier * idleSpeed
}

