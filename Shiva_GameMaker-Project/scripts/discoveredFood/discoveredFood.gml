/// @func discoveredFood()
/// @description called when a tile is explored and food is found


var newText = "You found food!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}