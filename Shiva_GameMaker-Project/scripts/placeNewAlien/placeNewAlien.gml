/// @func placeNewAlien()
/// @description try to have a spawn pod place a new alien

// if it's ready to place an alien
if ( not placedAlien and global.invasionRound ) {
	
	// pick an open tile next to the pod
	calcTargets(tileLocation, 1)
	if ( ds_list_empty(targetsList) ) {
		return
	}
	var targetTile = ds_list_find_value( targetsList, random(ds_list_size(targetsList)) )
	
	// place an alien on that tile
	var newAlien = instance_create_layer(targetTile.x, targetTile.y, "Units", o_Alien_Rudra)
	newAlien.tileLocation = targetTile
	targetTile.occupier = newAlien
	
	// indicate we finished placing an alien
	placedAlien = true
	global.enemiesOnBoard++
	global.aliensInvaded = true
}