/// @func: calculateAdjacencies
/// @description: Populates the adjacencies map for tiles in global.board

// loop through every tile
for ( i=0; i < ds_list_size(global.board) ; i++ ) {
	with ( ds_list_find_value(global.board, i) ) {
		adjTiles = ds_list_create()
		singleTile = collision_circle(x, y, tileDiameter, obj_Tile, false, true)
		// add each adj tile to a list, then disable that tile and search for another adj tile
		while (singleTile != noone) {
			ds_list_add(adjTiles, singleTile)
			instance_deactivate_object(singleTile)
			singleTile = collision_circle(x, y, tileDiameter, obj_Tile, false, true)
		}
		// reactivate each tile
		for ( j=0; j < ds_list_size(adjTiles) ; j++ ) {
			instance_activate_object(ds_list_find_value(adjTiles, j))
		}
		// add the current tile and it's adj list to the adj map
		ds_map_replace(global.adjacencyList, self, adjTiles)
	}
}