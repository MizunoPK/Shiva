/// @func: humanDialog
/// @description: This shows the corresponding dialog box for a human
// @Author: Kai Mizuno
// Date Created: 3/5/20
// Last Updated: 3/5/20

exitExploringDialog() // check if the exploration dialog box should stil be showing
// if we just explored, just the dialog box telling the player what was discovered
if ( justExplored ) {
	exploringDialog()
}

// otherwise, if we're not selecting a target, try showing the standard dialog
else {
	dialogText = (
		name + "\n" +
		"\nLevel: " + string(level) +
		"\nHealth: " + string(currentHealth) + 
		"\nHunger: " + string(hunger) +
		"\nStatus: " + status
		)
	
	if (not selectingTarget ) {
		unitDialog()
	}
}