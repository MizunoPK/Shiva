/// @func toggleMainOverlay(tileList)
/// @description toggles the main overlay for the given list of tiles
/// @param tileList

var tileList = argument0

if (selectingTarget) {
	// show moveable targets
	for (var i=0; i < ds_list_size(tileList); i++) {
		with( ds_list_find_value(tileList, i) ) {
			currentOverlay = layer_sprite_create(layer_get_id("Tile_Overlays"), x, y, overlaySprite)
		}
	}
}
else {
	// remove movement overlay
	for (var i=0; i < ds_list_size(tileList); i++) {
		with( ds_list_find_value(tileList, i) ) {
			layer_sprite_destroy(currentOverlay)
		}
	}
}