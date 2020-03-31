/// @func: unitDialog
/// @description: Draws the info dialog above the unit if it's selected. If it isn't selected, then show the health of the unit
// @Author: Kai Mizuno

draw_set_font(DIALOG_FONT)
draw_set_color(dialogColor)
var preDepth = depth
depth = preDepth - 10

// if the unit is selected: show the info dialog
if ( global.currentSelectedObject == self ) {
	// creates a dialog showing the name, health, and status of the unit
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	msg_static(dialogText)
	
}
// otherwise just show the health of the unit if it isn't at 100%
else if ( attackable and currentHealth < maxHealth ) {
	draw_set_halign(fa_center)
	draw_text(x, y - sprite_height, currentHealth)
}

depth = preDepth