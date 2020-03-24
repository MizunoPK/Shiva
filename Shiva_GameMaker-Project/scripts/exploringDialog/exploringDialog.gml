/// @func: exploringDialog
/// @description: Draws the info dialog above the unit if it's selected. If it isn't selected, then show the health of the unit
// @Author: Kai Mizuno

draw_set_font(DIALOG_FONT)
draw_set_color(UNVISITED_DIALOG_COLOR)
var preDepth = depth
depth = -1000

// creates a dialog showing the exploration message
draw_set_halign(fa_left);
draw_set_valign(fa_top);
msg_static(dialogText)

depth = preDepth