/// @func: defineGlobals()
/// @description: This is called at the start of the game and establishes all the global variables we want to define


global.currentSelectedObject = noone // the currently selected object by the user

global.groundTroops = ds_list_create() // a list of the ground troops
	ds_list_add( global.groundTroops, o_Soldier, o_Alien_Rudra )

global.roundNumber = 1 // the round the user is on
global.researchPoints = 0 // the amount of research points the player has accumulated
global.food = 0 // the amount of food the player has accumulated


// Tiles
global.board = ds_list_create()
global.adjacencyList = ds_map_create()
global.targetsList = ds_list_create()
global.targetsDistanceList = ds_list_create()
global.visitedList = ds_list_create()

// Inventory
global.inventory = ds_map_create()