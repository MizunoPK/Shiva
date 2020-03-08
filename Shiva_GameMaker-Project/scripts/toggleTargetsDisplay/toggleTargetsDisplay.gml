/// @func toggleTargetsDisplay()
/// @description if the player is selecting a target, show the overlay, otherwise disable the overlay

if (selectingTarget) {
	for (var i=0; i < ds_list_size(global.targetsList); i++) {
		with( ds_list_find_value(global.targetsList, i) ) {
			currentOverlay = layer_sprite_create(layer_get_id("UI_Sprites"), x, y, overlaySprite)
		}
	}
}
else {
	for (var i=0; i < ds_list_size(global.targetsList); i++) {
		with( ds_list_find_value(global.targetsList, i) ) {
			layer_sprite_destroy(currentOverlay)
		}
	}
}