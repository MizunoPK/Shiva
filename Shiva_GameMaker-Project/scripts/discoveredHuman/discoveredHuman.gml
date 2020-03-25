/// @func discoveredHuman()
/// @description called when a tile is explored and a human is found

var civilian = "Civilian"
var civilianIndex = 0
var unarmed = "Unarmed Soldier"
var unarmedIndex = 1
var pistol = "Pistol Soldier"
var pistolIndex = 2
var machineGun = "Machine Gun Soldier"
var machineGunIndex = 3

// populate possible resources
var possibleHumans = ds_list_create()
for (var i=0; i < ds_list_size(global.HUMAN_CHANCES); i++) {
	for (var j=0; j < ds_list_find_value(global.HUMAN_CHANCES, i); j++) {
		ds_list_add(possibleHumans, i)
	}
}

// get a random human
var foundHumanIndex = irandom( ds_list_size(possibleHumans) - 1 )
var foundHuman = ds_list_find_value(possibleHumans, foundHumanIndex)
var newHuman = ""

// find a tile to place it on
var distance = 1
var foundTile = noone
while (foundTile == noone) {
	// try to place the human on the last tile the discovering human was on
	if (previousTile != noone and previousTile.occupier == noone) {
		foundTile = previousTile
	}
	else {
		// if the unit has no last tile, or the previous tile is already occupied, find a random adj tile
		calcTargets( tileLocation, distance )
		if ( ds_list_size(targetsList) != 0 ) {
			for (var i=0; i < ds_list_size(targetsList); i++) {
				var possibleTile = ds_list_find_value(targetsList, i)
				if ( possibleTile != tileMovingTo and possibleTile != currentTarget ) {
					foundTile = possibleTile
					break
				}
			}
		}
	}
	distance++
}

// place the new human
// if it's a civilian:
if ( foundHuman == civilianIndex ) {
    newHuman = civilian
	// place a civilian
}
// if it's a soldier:
else {
	var newSoldier = placeObject(foundTile, o_Soldier) // place the soldier
	// do the follow up setup based on what type of soldier it should be
	if ( foundHuman == unarmedIndex ) {
		with newSoldier unarmedSetup()
		newHuman = unarmed
	}
	else if ( foundHuman == pistolIndex ) {
		with newSoldier pistolSetup()
		newHuman = pistol
	}
	else if ( foundHuman == machineGunIndex ) {
		with newSoldier machineGunSetup()
		newHuman = machineGun
	}
}		

// update the exploration dialog
var newText = "You found a " + newHuman + "!"

if ( justExplored ) {
	dialogText = dialogText + "\n" + newText
}
else {
	dialogText = newText
}
