/// @func updateTileDialog()
/// @description update the dialog of base tiles

if ( explored or not explorable ) { 
	dialogColor = VISITED_DIALOG_COLOR
	dialogText = (
		name
	)
}
else {
	dialogText = (
		name + " - " +
		"UNEXPLORED"
	)
}