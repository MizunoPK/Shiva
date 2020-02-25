/// @func: unitDialog
/// @description: Draws the info dialog above the unit if it's selected. If it isn't selected, then show the health of the unit
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

draw_set_font(DIALOG_FONT)
draw_set_color(dialogColor)
depth = -1000

// if the unit is selected: show the info dialog
if ( global.currentSelectedObject == self ) {
	// creates a dialog showing the name, health, and status of the unit
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	msg_static(
	name + "\n" +
	"\nHealth: " + string(currentHealth) + 
	"\nStatus: " + status
	)
	
}
// otherwise just show the health of the unit if it isn't at 100%
else if ( currentHealth < maxHealth ) {
	draw_set_halign(fa_center)
	draw_text(x, y - sprite_height, currentHealth)
}

depth = 0