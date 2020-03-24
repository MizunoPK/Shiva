/// @func endPath
/// @description called during the end path event to clean up moving units

// if we have reached the tile we want to be moving to
if ( currentTarget == tileMovingTo ) {
	tileMovingTo.beingMovedTo = false
	tileMovingTo = noone
}

isMoving = false
image_speed = idleSpeed

with (currentTarget) {
	occupier = other
}
tileLocation = currentTarget

currentTarget = noone