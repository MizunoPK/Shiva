event_inherited()
checkTurretHunger()
checkTurretFoodButton()

if ( instanceRound != global.roundNumber ) {
	instanceRound = global.roundNumber
	if ( not waitingForUnit ) {
		hunger += CHANGE_IN_HUNGER
	}
}