/// @func drawInventory()
/// @description draw event function for the inventory, which draws the background for the inventory when active

if ( inventoryOpen ) {

	// draw the background
	x = camera_get_view_x(view_camera[0]) + global.halfViewWidth - (rowWidth / 2)
	y = camera_get_view_y(view_camera[0]) + global.halfViewHeight - (columnHeight / 2)
	draw_sprite_stretched_ext( s_Inventory_Background, 0, x, y, rowWidth, columnHeight, c_white, 0.9 )
	
	// write the text
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(bannerFont)
	draw_set_color(FRIENDLY_DIALOG_COLOR)
	draw_text(x + sideMargin, y + topMargin, banner )
	
	// update the positions of buttons
	for (var i=0; i < ds_list_size(inventoryButtonsKeys); i++ ) {
		var buttonName = ds_list_find_value(inventoryButtonsKeys, i)
		var button = ds_map_find_value(inventoryButtons, buttonName)
		button.x = x + button.invX
		button.y = y + button.invY
	}
	exitButton.x = x + exitButton.invX
	exitButton.y = y + exitButton.invY

}