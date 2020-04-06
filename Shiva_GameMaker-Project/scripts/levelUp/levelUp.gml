/// @func levelUp()
/// @description attempt to level up the unit

with (currentTarget) {

if ( not global.invasionRound and global.researchPoints >= 20 ) { 

	global.researchPoints -= 20
	level++
	maxHealth += 20
	currentHealth += 20
	
	sightRange++
	if ( movementSpeed > MOVEMENT_VELOCITY_0 ) {
		maxMovement++
		movementRange++
	}
}

}