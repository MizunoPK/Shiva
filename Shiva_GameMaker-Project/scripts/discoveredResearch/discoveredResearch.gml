/// @func discoveredHuman()
/// @description called when a tile is explored and research points are found


var newText = "You found research points!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}