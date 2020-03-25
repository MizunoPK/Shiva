/// @func exploreTile()
/// @description called at the end of a path for a human and allows the player to discover what is hidden in the tile

with (tileLocation) {
	// if the tile they are now on is explorable, has not been explored, and it is a prep phase, then proceed with exploring
	if ( not explored and explorable and not global.invasionRound ) {
		// variables associating the resource type with the index in the resourceList
		var none = 0
		var human = 1
		var humanWeapon = 2
		var alienWeapon = 3
		var food = 4
		var research = 5
		
		// populate possible resources
		var possibleResources = ds_list_create()
		for (var i=0; i < ds_list_size(resourceList); i++) {
			for (var j=0; j < ds_list_find_value(resourceList, i); j++) {
				ds_list_add(possibleResources, i)
			}
		}
		
		// get a random resource
		var foundResourceIndex = irandom( ds_list_size(possibleResources) - 1 )
		var foundResource = ds_list_find_value(possibleResources, foundResourceIndex)
		
		// call the appropriate function depending on what the index corresponds to
		if ( foundResource == human ) {
			 with other discoveredHuman()
		}
		else if ( foundResource == humanWeapon ) {
			with other discoveredHumanWeapon()
		}
		else if ( foundResource == alienWeapon ) {
			with other discoveredAlienWeapon()
		}
		else if ( foundResource == food ) {
			with other discoveredFood()
		}
		else if ( foundResource == research ) {
			with other discoveredResearch()
		}
		
		// DEBUG MESSAGE
		show_debug_message("DEBUG: Explored tile and found resource at index " + string(foundResource) + " in resourceList" )
		
		// acknowledge we finished exploring this tile
		explored = true
		// only show exploration dialog if something was actually discovered
		// also stop moving if something was discovered
		if ( foundResource != none ) {
			other.justExplored = true
			other.lastThingClicked = global.currentSelectedObject
		}
	}
}