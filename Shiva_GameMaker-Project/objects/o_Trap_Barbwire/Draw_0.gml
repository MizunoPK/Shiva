draw_self()

draw_set_font(DIALOG_FONT)
draw_set_color(FRIENDLY_DIALOG_COLOR)
depth = -1000
// if the unit is selected: show the info dialog
if ( global.currentSelectedObject == self ) {
	// creates a dialog showing the name, health, and status of the unit
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	msg_static(
	"Barbwire" + "\n" +
	"\nDurability: " + string(durability)
	)
	
}
depth=0