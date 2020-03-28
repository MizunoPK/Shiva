/// @func findNearbyTiles()
/// @description this finds the tiles within SAFE_RADIUS of the home base and stores their references in global.homeBaseNearbyTiles

calcTargets(tileLocation, SAFE_RADIUS)
global.homeBaseNearbyTiles = targetsList

// set these nearby tiles to have been explored already
for ( var i=0; i<ds_list_size(global.homeBaseNearbyTiles); i++) {
	var nearbyTile = ds_list_find_value(global.homeBaseNearbyTiles, i)
	nearbyTile.explored = true
}