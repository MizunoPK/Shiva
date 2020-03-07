/// @func findAllTargets(tile, range)
/// @description Recursive function helper function for calcTargets used to update global.targetsList with the possible targets
/// @param tile The tile that needs a target list generated for
/// @param range the range of possible targets

tile = argument0
range = argument1

ds_list_add(visited, tile)
adjTiles = ds_map_find_value(global.adjacencyList, tile)
// loop through every adj tile
for ( i=0 ; i < ds_list_size(adjTiles) ; i++ ) {
	tileBeingChecked = ds_list_find_value(adjTiles, i)
	// check if the tile has already been checked
	if ( ds_list_find_index(visited, tileBeingChecked ) != -1 ) {
		continue
	}
	ds_list_add(visited, tileBeingChecked)
	
	// if the tile is valid, add it to the targets list
	if ( ds_list_find_index(global.targetsList, tileBeingChecked ) == -1 ) {
		ds_list_add(global.targetsList, tileBeingChecked)
	}
	
	// if the range is greater than 1, recursively check the adj list of this tile as well
	if (range > 1) {
		findAllTargets(tileBeingChecked, range - 1)
	}
}