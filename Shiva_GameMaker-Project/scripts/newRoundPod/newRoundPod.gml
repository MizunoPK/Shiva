/// @func newRoundPod()
/// @description reset the pod when a new round starts

if ( instanceRound != global.roundNumber ) {
	placedAlien = false
	instanceRound = global.roundNumber
}