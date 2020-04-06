event_inherited()
checkManualTurretHealth()
checkTurretHunger()
checkTurretFoodButton()
checkSoldierButton()
checkLevelButton()
checkForSoldierButtonTile()

if ( instanceRound != global.roundNumber ) {
	instanceRound = global.roundNumber
	if ( not waitingForUnit ) {
		hunger += CHANGE_IN_HUNGER
	}
}