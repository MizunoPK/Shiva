/// @func showNextRoundButton()
/// @description Used in the draw event for the next round button so that it can only be pressed during prep rounds

if ( not global.invasionRound) {
	draw_self()
}
