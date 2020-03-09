/// @func findEnemy()
/// @description checks for the closest enemy within the range of the unit

// Pick a Target
calcTargets(tileLocation, sightRange) // get the targets within range
enemyInstance = noone
// if it's an alien, default to attacking the home base
if (not isFriendly and ds_list_empty(enemyList) and instance_exists(global.homeBase)) {
	enemyInstance = global.homeBase
}
// otherwise, try to find the closest enemy
else if (instance_exists(global.homeBase) and not ds_list_empty(enemyList)) {
	var enemyIndex = findSmallestIndex(enemyDistanceList)
	enemyInstance = ds_list_find_value(enemyList, enemyIndex)
}

// if the enemy is within attack range of the unit: attack
if ( enemyInstance != noone and ds_list_find_value(enemyDistanceList, enemyIndex) <= attackRange ) {
	tileMovingTo = noone
	if ( not isAttacking )
		changeAttackMode()
		direction = point_direction(x,y,enemyInstance.x,enemyInstance.y)
	return
}

// Pick a Tile to aim for
if (enemyInstance != noone) {
	if (isFriendly ) {
		calcTargets(tileLocation, movementRange)
		tileMovingTo = findClosestTile(enemyInstance.tileLocation)
	}
	else {
		calcTargets( enemyInstance.tileLocation, 1 )
		tileMovingTo = findClosestTile(tileLocation) 
	}
}