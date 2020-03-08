/// @func checkMovement()
/// @description check if the unit has a target selected to move to, and begin the path to that target

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
	movementRange = movementRange - ds_list_find_value(global.targetsDistanceList, ds_list_find_index(global.targetsList, currentTarget) )
	
	myPath = path_add()
	mp_potential_path(myPath, currentTarget.x, currentTarget.y, 2, 3, false)
	mp_potential_settings(45, 10, 3, true)
	path_start(myPath, 2, path_action_stop, true)
	isMoving = true
}

if (isMoving) {
	image_speed = movementMultiplier * idleSpeed
}

