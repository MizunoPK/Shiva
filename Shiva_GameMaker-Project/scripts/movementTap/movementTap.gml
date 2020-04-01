/// @func movementTap
/// @description what happens when the movement button is pressed

if ( not global.invasionRound ) {
	// if the user was selecting: mark that we are no longer selecting and update the button
	with (currentTarget) {
		if ( selectingTarget ) {
			selectingTarget = false
			toggleTargetsDisplay()
			other.sprite_index = other.moveSprite
		}
		// otherwise, the user wants to select a place to move to
		else {
			// get the unit's possible targets
			selectingTarget = true
			// get the movement tiles
			calcTargets(tileLocation, movementRange)
			movementTargets = targetsList
			mountableTargets = mountableTiles
			// get the enemy tiles
			calcTargets(tileLocation, 1)
			enemyTargets = ds_list_create()
			for ( var i = 0; i < ds_list_size(enemyList); i++ ) {
				var enemy = ds_list_find_value(enemyList, i)
				ds_list_add(enemyTargets, enemy.tileLocation)
			}
			toggleTargetsDisplay()
			other.sprite_index = xButton
		}
	}

}