/// @func discoveredHuman()
/// @description called when a tile is explored and a human is found

var newText = "You found a human!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}
