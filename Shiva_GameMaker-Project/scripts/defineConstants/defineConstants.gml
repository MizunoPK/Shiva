/// @func: defineConstants
/// @description: This is called at the start of the game and establishes all the constants we want to define

// Engine
#macro ENGINE_OBJECTS_LAYER "Engine"

// Sprites
#macro xButton s_X
#macro MENU_EXIT_BUTTON_WIDTH 64

// Resources
#macro MAX_FOOD 5 // the maximum amount of food that can be found at once
#macro FOOD_REGEN 3
#macro MAX_RESEARCH_POINTS 5 // the maximum amount of research points that can be found at once

// Tiles
#macro tileDiameter 64
#macro tileRadius (tileDiameter / 2)
#macro tileEdgeWidth 51
#macro BOARD_RINGS 8
#macro SAFE_RADIUS 2 // the amount of tiles from the home base the player can place objects

// Dialog Colors
#macro VISITED_DIALOG_COLOR c_green
#macro UNVISITED_DIALOG_COLOR c_orange
#macro FRIENDLY_DIALOG_COLOR c_white
#macro ENEMY_DIALOG_COLOR c_red
#macro DIALOG_FONT f_dialog

// Health
#macro HEALTH_1 50
#macro HEALTH_2 100
#macro HEALTH_3 125
#macro HEALTH_4 150
#macro HEALTH_5 200
#macro HEALTH_HOME_BASE 500

// Sight Range
#macro SIGHT_1 1
#macro SIGHT_2 2
#macro SIGHT_3 3
#macro SIGHT_4 4
#macro SIGHT_5 5
#macro SIGHT_6 6

// Attack Damage (health per hit)
#macro ATTACK_DAMAGE_0 0
#macro ATTACK_DAMAGE_1 0.2
#macro ATTACK_DAMAGE_2 5
#macro ATTACK_DAMAGE_3 10
#macro ATTACK_DAMAGE_4 20
#macro ATTACK_DAMAGE_5 50

// Attack Speed (seconds between hits)
#macro ATTACK_SPEED_0 0
#macro ATTACK_SPEED_1 2.5
#macro ATTACK_SPEED_2 1.5
#macro ATTACK_SPEED_3 1
#macro ATTACK_SPEED_4 0.25
#macro ATTACK_SPEED_5 0.05

// Shot Velocity Multiplier (affects how fast projectiles travel)
#macro SHOT_SPEED_1 1
#macro SHOT_SPEED_2 2
#macro SHOT_SPEED_3 3
#macro SHOT_SPEED_4 5
#macro SHOT_SPEED_5 8

// Movement velocity of moveable units
#macro MOVEMENT_VELOCITY_0 0
#macro MOVEMENT_VELOCITY_1 1
#macro MOVEMENT_VELOCITY_2 2
#macro MOVEMENT_VELOCITY_3 3
#macro MOVEMENT_VELOCITY_4 4
#macro MOVEMENT_VELOCITY_5 5

// Attack Range
#macro ATTACK_RANGE_0 0
#macro ATTACK_RANGE_1 1
#macro ATTACK_RANGE_2 2
#macro ATTACK_RANGE_3 3

// Base Movement Range
#macro BASE_MOVEMENT_0 0
#macro BASE_MOVEMENT_1 1
#macro BASE_MOVEMENT_2 3
#macro BASE_MOVEMENT_3 5
#macro BASE_MOVEMENT_4 6
#macro BASE_MOVEMENT_5 8

// Invasion Movement Range (amount of tiles the unit can move during invasion rounds to seek out targets)
#macro INVASION_MOVEMENT_0 0
#macro INVASION_MOVEMENT_1 1
#macro INVASION_MOVEMENT_2 2

// Soldier Weapons
#macro NO_WEAPON "Unarmed"
#macro PISTOL "Pistol"
#macro MACHINE_GUN "Machine Gun"
#macro LASER "Alien Laser"
#macro CANNON "Alien Cannon"
#macro SOLDIER "Soldier"
#macro WALL "WALL"

// Turrets
#macro STANDARD_TURRET "Manual Turret"
#macro CANNON_TURRET "Manual Alien Burst Cannon"
#macro LASER_TURRET "Automatic Alien Laser"

// Inventory
#macro INVENTORY_BUTTON_SIZE 32 // the pixel width and height of buttons
#macro MAX_BUTTONS_PER_ROW 5 // the amount of buttons shown in each row of the inventory
#macro INVENTORY_BUTTON_LAYER "Inventory_Buttons"
#macro INVENTORY_LAYER "Inventory"
#macro WEAPON_LABEL "Weapon"
#macro BUILDING_LABEL "Building"
#macro NOTHING_LABEL "Nothing"

// Aliens
#macro RUDRA "Rudra"
