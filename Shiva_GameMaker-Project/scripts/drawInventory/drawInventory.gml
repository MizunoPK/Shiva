/// @func drawInventory()
/// @description draw event function for the inventory, which draws the background for the inventory when active

if ( inventoryOpen ) {

	// draw the background
	x = view_xport[view_current] + (view_wport[view_current] / 2) - (rowWidth / 2)
	y = view_yport[view_current] + (view_hport[view_current] / 2) - (columnHeight / 2)
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