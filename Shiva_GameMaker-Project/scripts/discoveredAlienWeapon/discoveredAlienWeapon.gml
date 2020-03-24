/// @func discoveredAlienWeapon()
/// @description called when a tile is explored and an alien weapon is found


var newText = "You found an alien weapon!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}