/// @func toggleTargetsDisplay()
/// @description if the player is selecting a target, show the overlay, otherwise disable the overlay

if (selectingTarget) {
	for (var i=0; i < ds_list_size(targetsList); i++) {
		with( ds_list_find_value(targetsList, i) ) {
			currentOverlay = layer_sprite_create(layer_get_id("UI_Sprites"), x, y, overlaySprite)
		}
	}
}
else {
	for (var i=0; i < ds_list_size(targetsList); i++) {
		with( ds_list_find_value(targetsList, i) ) {
			layer_sprite_destroy(currentOverlay)
		}
	}
}