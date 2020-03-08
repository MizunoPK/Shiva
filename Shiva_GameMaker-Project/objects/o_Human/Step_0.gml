// check if we need to reset due to a new round
if ( instance_round != global.roundNumber ) {
	newRoundHuman()
	instance_round = global.roundNumber
}

// check the unit's health
checkHealth()
// check hunger
checkHunger()
// check the unit's target
checkTarget()
// check the status
checkStatus()
// check the movement button
checkMovementButton()
// check the unit's direction
updateDirection()
// check if the unit has been provided a tile target
checkForTile()
// try to start a movement path
checkMovement()