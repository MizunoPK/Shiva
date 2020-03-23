/// @func checkInvasionStatus()
/// @desctiption called during the step event of the next round button, used to detect when an invasion round ends

// if the following conditions are true:
//		it is an invasion round
//		spawn pods have created at least 1 alien
//		there are no more aliens on the board
// then end the invasion round
if ( global.invasionRound and global.aliensInvaded and global.enemiesOnBoard == 0 ) {
	newPrepRound()
}