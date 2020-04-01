if ( currentHealth <= 0 ) {
	with (tileLocation) {
		occupier = noone
	}

	if ( not waitingForUnit ) {
		var otherTile = tileLocation
		// place the soldier
		instance_activate_object(soldierInstance)
		soldierInstance.tileLocation = otherTile
		soldierInstance.x = otherTile.x
		soldierInstance.y = otherTile.y
		otherTile.occupier = soldierInstance
		with (soldierInstance) exploreTile()
		global.currentSelectedObject = soldierInstance
		soldierInstance.hunger = hunger
	}

	instance_destroy(self)
}