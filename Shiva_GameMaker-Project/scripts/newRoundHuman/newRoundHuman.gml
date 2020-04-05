/// @func: newRoundHuman
/// @description: This is called between rounds for humans

justExplored = false

if ( not global.invasionRound) {
	hunger += CHANGE_IN_HUNGER
	movementRange = maxMovement
	regenHealth()
}
else {
	movementRange = invasionRoundMovementRange
}