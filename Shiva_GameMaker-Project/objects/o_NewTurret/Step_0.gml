if (placing and global.currentSelectedObject != self) {
	placeObject( global.currentSelectedObject, o_ManualTurret )
	global.currentSelectedObject = noone
	placing = false
	
}