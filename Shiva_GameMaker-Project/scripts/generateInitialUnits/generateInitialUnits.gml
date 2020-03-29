/// @func generateInitialUnits()
/// @description generates the initial units the player starts with

// spawn soldiers
var soldiersSpawned = 0
var tilesTried = ds_list_create() // list of the tiles attempted to be placed on already
while (soldiersSpawned < STARTING_SURROUNDING_SOLDIERS and ds_list_size(tilesTried) < ds_list_size(global.homeBaseNearbyTiles)) {
	var index = irandom( ds_list_size(global.homeBaseNearbyTiles) - 1 ) // get a random spot around the base
	var nearbyTile = ds_list_find_value(global.homeBaseNearbyTiles, index) // get the tile at that spot
	
	// check if the tile has already been looked at
	if ( ds_list_find_index(tilesTried, nearbyTile) != -1) {
		continue;
	}
	
	// try to spawn a soldier on the tile
	if ( nearbyTile.occupier == noone and nearbyTile.isWalkable) {
		var newSoldier = placeObject(nearbyTile, o_Soldier)
		with (newSoldier) pistolSetup()
		soldiersSpawned++
	}
	
	ds_list_add(tilesTried, nearbyTile)
}