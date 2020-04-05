if ( global.invasionRound ) {
	status = "INVASION ROUND"
}
else {
	status = "Prep Round"
}

var preDepth = depth
depth = preDepth - 10
draw_set_font(f_dialog)
draw_set_color(c_black)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(sideMargin, topMargin,
	status +
	"\nRound: " + string(global.roundNumber) +
	"\nResearch Points: " + string(global.researchPoints) +
	"\nFood: " + string(global.food)	
)
depth = preDepth