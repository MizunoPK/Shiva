/// @func: checkStatus()
/// @description: This is called during a unit's step function to check it's current status
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

if ( isMoving ) {
	if ( !isSlowed ) {
		status = "Moving"
	}
	else
		status = "Moving - Slowed"
}
else if ( isAttacking and !passiveUnit ) {
	status = "In Combat"
}
else if ( movementSpeed != MOVEMENT_VELOCITY_0 and isFriendly ) {
	status = string(movementRange) + " Movement Remaining"
}
else if ( !passiveUnit ) {
	status = "Ready to Fight"
}
else if ( passiveUnit ) {
	status = "Inactive"
}



