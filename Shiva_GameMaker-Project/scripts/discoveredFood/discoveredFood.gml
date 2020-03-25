/// @func discoveredFood()
/// @description called when a tile is explored and food is found

var foodFound = irandom_range( 1, MAX_FOOD) // get an amount of food
global.food += foodFound

var newText = "You found " + string(foodFound) + " food!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}