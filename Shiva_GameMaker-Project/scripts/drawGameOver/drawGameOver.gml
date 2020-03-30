/// @func drawGameOver()
/// @description draw the game over screen if it's game over

if (isGameOver) {
	var centerX = global.halfViewWidth
	var centerY = 2 * global.halfViewHeight / 3
	
	// draw the background
	x = camera_get_view_x(view_camera[0]) + (centerX / 2)
	y = camera_get_view_y(view_camera[0]) + (centerY / 2)
	draw_sprite_stretched_ext( s_Inventory_Background, 0, x, y, centerX, 2 * centerY, c_orange, 0.9 )

	// draw the banner text
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(bannerFont)
	draw_set_color(bannerColor)
	draw_text(x + centerX / 2, y + topMargin, bannerText )
	
	var availableY = 2 * centerY - bannerDedicatedHeight
	var spaceBetweenButtons = availableY / (ds_list_size(buttonList)) // +2 to add some margin for above and below buttons

	// update the position on the buttons
	for ( var row=0; row < ds_list_size(buttonList); row++) {
		var newX = x + centerX / 2
		var newY = y + bannerDedicatedHeight + (spaceBetweenButtons)*row
		var button = ds_list_find_value( buttonList, row )
		button.x = newX
		button.y = newY
	}

}