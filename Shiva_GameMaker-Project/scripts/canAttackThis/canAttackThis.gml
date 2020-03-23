/// @func canMoveHere(enemyTile)
/// @description returns whether the given tile is in the enemyTargets
/// @param enemy enemy being checked

var enemyTile = argument0

if ( ds_list_find_index(enemyTargets, enemyTile) != -1) 
	return true
else
	return false