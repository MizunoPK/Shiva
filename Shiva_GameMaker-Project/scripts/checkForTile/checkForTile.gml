/// @func checkForTile()
/// @description This is called during the step event and checks if the moveable unit has been provided a tile target
// @Author: Kai Mizuno

var potentialTarg = global.currentSelectedObject
// if we're selecting a target and the global selected object is no longer itself
if ( selectingTarget and potentialTarg != self ) {
	if ( potentialTarg != noone) {
		// if it's a spawn pod, destroy it
		if (object_get_name(potentialTarg.object_index) == "o_SpawnPod" and canAttackThis(potentialTarg.tileLocation)) {
			destroyPod(potentialTarg)
		}
		// if it's a tile...
		else if ( object_get_parent(potentialTarg.object_index) == obj_Tile ) {
			var tileOccupier = potentialTarg.occupier
			// if the tile's occupied by a spawn pod
			if ( tileOccupier != noone and object_get_name(tileOccupier.object_index) == "o_SpawnPod" and canAttackThis(potentialTarg) ) {
				destroyPod(tileOccupier)
			}
			// otherwise, set the tile to be the one being moved to if we can move there
			else if ( canMoveHere(potentialTarg) ) {
				tileMovingTo = potentialTarg
				tileMovingTo.beingMovedTo = true
			}
		
		}
	}
	selectingTarget = false
	
	toggleTargetsDisplay()
	moveButton.sprite_index = moveButton.moveSprite
	
}