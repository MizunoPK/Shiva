/// @func checkForTile()
/// @description This is called during the step event and checks if the moveable unit has been provided a tile target
// @Author: Kai Mizuno

if ( selectingTarget and global.currentSelectedObject != self ) {
	if ( global.currentSelectedObject != noone and object_get_parent(global.currentSelectedObject.object_index) == obj_Tile ) {
		
		tileMovingTo = global.currentSelectedObject
		
	}
	selectingTarget = false
	
	toggleTargetsDisplay()
	moveButton.sprite_index = moveButton.moveSprite
	
}