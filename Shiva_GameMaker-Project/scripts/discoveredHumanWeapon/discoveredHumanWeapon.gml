/// @func discoveredHumanWeapon()
/// @description called when a tile is explored and a human weapon is found


var newText = "You found a human weapon!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}