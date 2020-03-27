/// @func humanSetup()
/// @description the main create event function for all humans

hunger = 0
instanceRound = global.invasionRound
justExplored = false
previousTile = noone
createMovementButton()
ds_list_add(global.listOfHumans, self)