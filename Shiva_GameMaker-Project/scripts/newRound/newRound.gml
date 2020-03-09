/// @func newRound
/// @description called when a new round occurs


global.invasionRound = not global.invasionRound
if ( not global.invasionRound ) {
	global.roundNumber++
}