/// @func: manualTurretDialog()
/// @description: This is called during the draw event and shows the corresponding dialog for the turret
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

// If the turret is waiting for a unit: tell the player
if ( waitingForUnit ) {
	draw_set_font(f_dialog)
	draw_set_color(dialogColor)
	depth = -1000
	
	msg_static("Pick a Soldier to Place on this Turret")
	
	depth = 0
}
else {
	setBaseUnitDialog()
	unitDialog()
}