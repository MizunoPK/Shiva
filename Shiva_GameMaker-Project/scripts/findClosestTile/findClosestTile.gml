/// @func findClosestTile(baseTile)
/// @description find the tile in targetList closest to the tile passed in as baseTile 

baseTile = argument0
var returnTile = noone
var distance = -1
// find the tile with the smallest distance to the tile being moved to
for (var i=0; i < ds_list_size(targetsList); i++ ) {
	var potentialTarget = ds_list_find_value(targetsList, i)
	// if we found our end location, ignore the rest of the tiles
	if ( potentialTarget == baseTile ) {
		returnTile = baseTile
		break
	}
	// check the tile's length to the end tile
	potentialLength = 0
	with (potentialTarget) {
		other.potentialLength = distance_to_object(other.baseTile)
	}
	if ( distance == -1 or potentialLength < distance ) {
		distance = potentialLength
		returnTile = potentialTarget
	}
}


return returnTile