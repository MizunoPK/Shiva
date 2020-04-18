/// @func finishedGenerating()
/// @description function called once the map finishes generating

// place the home base on the tile
occupier = instance_create_layer(x,y,"Units",o_HomeBase)
with (occupier) {
	tileLocation = other
}

calculateAdjacencies()
with (global.homeBase) findNearbyTiles()
generateInitialUnits()


instance_deactivate_object(global.loadingScreen)