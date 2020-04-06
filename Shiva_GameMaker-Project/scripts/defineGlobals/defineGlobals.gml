/// @func: defineGlobals()
/// @description: This is called at the start of the game and establishes all the global variables we want to define

global.gameOverMenu = instance_create_layer(0,0,"GameOver",o_GameOverMenu)

global.currentSelectedObject = noone // the currently selected object by the user
global.homeBase = noone // the instance of the home base
global.homeBaseNearbyTiles = ds_list_create() // a list storing the tiles within SAFE_RADIUS of the home base

global.groundTroops = ds_list_create() // a list of the ground troops
	ds_list_add( global.groundTroops, o_Soldier, o_Alien_Rudra )

global.invasionRound = false // is the game currently on an invasion round?
global.enemiesOnBoard = -1 // the number of enemies on the board... -1 when during a prep round
global.aliensInvaded = false // boolean to detect when the aliens have finished exiting spawn pods and started invading
global.roundNumber = 1 // the round the user is on
global.researchPoints = 100 // the amount of research points the player has accumulated
global.food = 0 // the amount of food the player has accumulated
global.spawnPods = 0 // the number of spawn pods on the map, and this is the initial amount of spawn pods

// Inventory
global.humanButtons = ds_list_create() // list of the buttons corresponding to human things
ds_list_add(global.humanButtons, o_PistolButton, o_MachineGunButton, o_ManualTurretButton, o_WallButton)
global.alienButtons = ds_list_create() // list of the buttons corresponding to alien things
ds_list_add(global.alienButtons, o_LaserButton, o_CannonButton)
global.listOfSoldiers = ds_list_create() 
global.listOfHumans = ds_list_create()
global.inventory = instance_create_layer(0,0, INVENTORY_LAYER, o_Inventory) // make this last so that the create event can access the prior global variables

// Tiles
global.board = ds_list_create()
global.adjacencyList = ds_map_create()
global.isGenerating = 0;

// Resource Lists for Explorable Tiles
	// each value in the resourceList corresponds to a % chance of that resource getting discovered
	// values should add up to 100
	// format for the resource list:
	// [NOTHING, HUMAN, HUMAN WEAPON, ALIEN WEAPON, FOOD, RESARCH POINTS]
global.BATTLE_RESOURCES = ds_list_create() // resource list for battlefields
	ds_list_add(global.BATTLE_RESOURCES, 0, 20, 25, 25, 5, 25)
		
global.CITY_RESOURCES = ds_list_create() // resource list for cities
	ds_list_add(global.CITY_RESOURCES, 0, 30, 15, 10, 30, 15)
		
global.FOREST_RESOURCES = ds_list_create() // resource list for forests
	ds_list_add(global.FOREST_RESOURCES, 30, 20, 15, 5, 20, 10)
		
global.LANDING_RESOURCES = ds_list_create() // resource list for landing sites
	ds_list_add(global.LANDING_RESOURCES, 0, 0, 5, 55, 0, 40)
		
global.PLAINS_RESOURCES = ds_list_create() // resource list for plains
	ds_list_add(global.PLAINS_RESOURCES, 75, 6, 8, 2, 5, 4)
	
// Probability Lists for the resource types
global.HUMAN_CHANCES = ds_list_create()				 // odds for each type of human being found
	ds_list_add(global.HUMAN_CHANCES, 0, 60, 25, 15) // format: [Civilian, Unarmed, Pistol, Machine Gun]
	
global.HUMAN_WEAPON_CHANCES = ds_list_create()				 // odds for each type of human weapon being found
	ds_list_add(global.HUMAN_WEAPON_CHANCES, 75, 25, 0, 0) // format: [Pistol, Machine Gun, Manual Turret, Wall]
	
global.ALIEN_WEAPON_CHANCES = ds_list_create()				 // odds for each type of alien weapon being found
	ds_list_add(global.ALIEN_WEAPON_CHANCES, 75, 25, 0, 0) // format: [Laser Gun, Cannon, Automatic Laser Turret, Manual Cannon Turret]

// Camera globals
global.halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
global.halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

// Loading screen
global.loadingScreen = instance_create_layer(2 * global.halfViewWidth, 2 * global.halfViewHeight, "Loading", o_Loading)