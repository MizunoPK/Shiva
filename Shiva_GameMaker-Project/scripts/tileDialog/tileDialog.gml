/// @func: tileDialog
/// @description: Draws the info dialog above the tile if it's selected
// @Author: Kai Mizuno

draw_set_font(DIALOG_FONT)
draw_set_color(dialogColor)
var prevDepth = depth
depth = -1000

// if the unit is selected: show the info dialog
if ( global.currentSelectedObject == self ) {
	// creates a dialog showing the name, health, and status of the unit
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	msg_static(dialogText)
}

depth = prevDepth