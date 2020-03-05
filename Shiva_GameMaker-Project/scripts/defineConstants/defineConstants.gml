/// @func: defineConstants
/// @description: This is called at the start of the game and establishes all the constants we want to define
// Date Created: 2/21/19
// Last Updated: 2/21/19



// Dialog Colors
#macro FRIENDLY_DIALOG_COLOR c_white
#macro ENEMY_DIALOG_COLOR c_red
#macro DIALOG_FONT f_dialog

// Attack Damage (health per hit)
#macro ATTACK_DAMAGE_0 0
#macro ATTACK_DAMAGE_1 0.2
#macro ATTACK_DAMAGE_2 1
#macro ATTACK_DAMAGE_3 5
#macro ATTACK_DAMAGE_4 10
#macro ATTACK_DAMAGE_5 20

// Attack Speed (seconds between hits)
#macro ATTACK_SPEED_0 0
#macro ATTACK_SPEED_1 2.5
#macro ATTACK_SPEED_2 1.5
#macro ATTACK_SPEED_3 1
#macro ATTACK_SPEED_4 0.25
#macro ATTACK_SPEED_5 0.05

// Shot Velocity Multiplier (affects how fast projectiles travel)
#macro SHOT_SPEED_0 0
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

// Angles
#macro DIRECTION_EAST 0
#macro DIRECTION_NORTH_EAST 45
#macro DIRECTION_NORTH 90
#macro DIRECTION_NORTH_WEST 135
#macro DIRECTION_WEST 180
#macro DIRECTION_SOUTH_WEST 225
#macro DIRECTION_SOUTH 270
#macro DIRECTION_SOUTH_EAST 315
global.directionList = ds_list_create()
ds_list_add(global.directionList, DIRECTION_EAST, DIRECTION_NORTH_EAST, DIRECTION_NORTH, DIRECTION_NORTH_WEST, DIRECTION_WEST, DIRECTION_SOUTH_WEST, DIRECTION_SOUTH, DIRECTION_SOUTH_EAST )

// Soldier Weapons
#macro NO_WEAPON "Unarmed Soldier"
#macro PISTOL "Pistol Soldier"
#macro MACHINE_GUN "Machine Gun Soldier"
#macro LASER "Alien Laser Soldier"
#macro CANNON "Alien Cannon Soldier"

// Turrets
#macro STANDARD_TURRET "Manual Turret"
#macro CANNON_TURRET "Manual Alien Burst Cannon"
#macro LASER_TURRET "Automatic Alien Laser"

// Aliens
#macro RUDRA "Rudra"
