/// @func canMoveHere(tile)
/// @description returns whether the given tile is in the movementTargets
/// @param tile tile being checked

var tile = argument0

if ( ds_list_find_index(movementTargets, tile) != -1) 
	return true
else
	return false