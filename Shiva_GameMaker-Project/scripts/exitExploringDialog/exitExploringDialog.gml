/// @func exitExploringDialog()
/// @description check if we should no longer be showing the exploring dialog

if ( justExplored and global.currentSelectedObject != lastThingClicked and tileMovingTo = noone ) {
	justExplored = false
}