/// @func findAllTargets(tile, range)
/// @description Recursive function helper function for calcTargets used to update global.targetsList with the possible targets
/// @param tile The tile that needs a target list generated for
/// @param range the range of possible targets

var tile = argument0
var range = argument1

ds_list_add(global.visitedList, tile)
var adjTiles = ds_map_find_value(global.adjacencyList, tile)
// loop through every adj tile
for ( var i=0 ; i < ds_list_size(adjTiles) ; i++ ) {
	var tileBeingChecked = ds_list_find_value(adjTiles, i)
	if ( ds_list_find_index(global.visitedList, tileBeingChecked) != -1 ) {
		continue
	}
	ds_list_add(global.visitedList, tileBeingChecked)
	
	// if the tile is valid, add it to the targets list
	var index = ds_list_find_index(global.targetsList, tileBeingChecked )
	var length = movementRange + 1 - range
	if ( index == -1 and tileBeingChecked != tileLocation  ) {
		ds_list_add(global.targetsList, tileBeingChecked)
		ds_list_add(global.targetsDistanceList, length)
	}
	else if ( index != -1 and length < ds_list_find_value(global.targetsDistanceList, index)) {
		ds_list_replace(global.targetsDistanceList, index, length)
	}
	
}

for ( var i=0 ; i < ds_list_size(adjTiles) ; i++ ) {
	var tileBeingChecked = ds_list_find_value(adjTiles, i)
	// if the range is greater than 1, recursively check the adj list of this tile as well
	if (range > 1 and tileBeingChecked != tileLocation ) {
		findAllTargets(tileBeingChecked, range - 1)
	}
	ds_list_delete(global.visitedList, ds_list_find_index(global.visitedList, tileBeingChecked))
}

ds_list_delete(global.visitedList, ds_list_find_index(global.visitedList, tile))

