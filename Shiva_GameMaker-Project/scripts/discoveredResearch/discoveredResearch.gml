/// @func discoveredResearch()
/// @description called when a tile is explored and research points are found

var researchFound = irandom_range(1, MAX_RESEARCH_POINTS)
global.researchPoints += researchFound

var newText = "You found " + string(researchFound) + " research points!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}