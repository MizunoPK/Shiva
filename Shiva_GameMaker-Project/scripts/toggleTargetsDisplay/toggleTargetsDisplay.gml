/// @func toggleTargetsDisplay()
/// @description if the player is selecting a target, show the overlay, otherwise disable the overlay

toggleMainOverlay(movementTargets)

if (selectingTarget) {
	// show moveable targets
	/*for (var i=0; i < ds_list_size(movementTargets); i++) {
		with( ds_list_find_value(movementTargets, i) ) {
			currentOverlay = layer_sprite_create(layer_get_id("Tile_Overlays"), x, y, overlaySprite)
		}
	}*/
	// show enemies
	for (var i=0; i < ds_list_size(enemyTargets); i++) {
		with( ds_list_find_value(enemyTargets, i) ) {
			currentOverlay = layer_sprite_create(layer_get_id("Tile_Overlays"), x, y, enemyOverlaySprite)
		}
	}
}
else {
	// remove movement overlay
	/*for (var i=0; i < ds_list_size(movementTargets); i++) {
		with( ds_list_find_value(movementTargets, i) ) {
			layer_sprite_destroy(currentOverlay)
		}
	}*/
	// remove enemy overlay
	for (var i=0; i < ds_list_size(enemyTargets); i++) {
		with( ds_list_find_value(enemyTargets, i) ) {
			layer_sprite_destroy(currentOverlay)
		}
	}
}