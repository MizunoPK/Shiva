/// @func updateManualTurretDialog()
/// @description updates the dialogText for a manual turret

if ( passiveUnit ) {
	status = "Waiting for Soldier..."
	dialogText = (
		name + "\n" +
		"\nLevel: " + string(level) +
		"\nHealth: " + string(currentHealth) + 
		"\nStatus: " + status
		)
}
else {
	checkStatus()
	
	dialogText = (
		name + "\n" +
		"\nLevel: " + string(level) +
		"\nHealth: " + string(currentHealth) + 
		"\nHunger: " + string(hunger) +
		"\nStatus: " + status
		)
}