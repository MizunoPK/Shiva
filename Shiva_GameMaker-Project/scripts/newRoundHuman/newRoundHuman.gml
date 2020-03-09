/// @func: newRoundHuman
/// @description: This is called between rounds for humans

if ( not global.invasionRound) {
	hunger += 5
	movementRange = maxMovement
}
else {
	movementRange = invasionRoundMovementRange
}