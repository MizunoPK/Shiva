// @func: toggleSelection
// @description: This is called when a unit is clicked on and enables/disables the unit being selected
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

if ( global.currentSelectedObject != self ) {
	global.currentSelectedObject = self
}
else {
	global.currentSelectedObject = noone
}