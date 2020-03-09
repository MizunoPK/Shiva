if (placing and global.currentSelectedObject != self) {
	placeObject( global.currentSelectedObject, o_Wall )
	global.currentSelectedObject = noone
	placing = false
	
}