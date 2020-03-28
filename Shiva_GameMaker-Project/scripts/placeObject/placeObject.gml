/// @func placeObject(tile, obj)
/// @description try to place the given object on the given tile
/// @param tile the tile that is being placed on
/// @param obj the object being placed on the tile
/// Returns: the instance of the obj it creates

var tile = argument0
var obj = argument1

// if it's being placed on an empty tile, place the new object
if ( object_get_parent(tile.object_index) == obj_Tile and tile.occupier == noone) {

	var newObj = instance_create_layer( tile.x, tile.y, "Units", obj ) // create the object
	newObj.tileLocation = tile
	with (newObj) {
		// if it's a human, explore the tile it was placed on
		if ( object_get_parent(object_index) == o_Human ) {
			//changeWeapon(PISTOL) // temp
			exploreTile()
		}
	}
	
	tile.occupier = newObj
	
	return newObj
}

return noone