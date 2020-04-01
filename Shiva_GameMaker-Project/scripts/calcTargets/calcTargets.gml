/// @func calcTargets(tile, range)
/// @description clears global.targetsList and finds the new targets list for the given tile
/// @param tile The tile that needs a target list generated for
/// @param range the range of possible targets

var tile = argument0
var range = argument1

targetsList = ds_list_create()
targetsDistanceList = ds_list_create()
enemyList = ds_list_create()
enemyDistanceList = ds_list_create()
lowPriorityEnemyTileList = ds_list_create()
mountableTiles = ds_list_create()
visitedList = ds_list_create()

if ( range == 0 ) {
	return
}
findAllTargets(tile, range, range)