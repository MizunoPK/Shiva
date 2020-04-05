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
	
	if ( irandom(1) == 0 ) {
		var newAlien = o_Alien_Rudra
	}
	else {
		var newAlien = o_Alien_Indra
	}
	
	// place an alien on that tile
	var newAlien = instance_create_layer(targetTile.x, targetTile.y, "Units", newAlien)
	newAlien.tileLocation = targetTile
	targetTile.occupier = newAlien
	
	// indicate we finished placing an alien
	placedAlien = true
	global.enemiesOnBoard++
	global.aliensInvaded = true
}