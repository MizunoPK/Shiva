/// @func: defineConstants
/// @description: This is called at the start of the game and establishes all the constants we want to define
// Date Created: 2/21/19
// Last Updated: 2/21/19

// Sprites
#macro xButton s_X

// Tiles
#macro tileDiameter 64
#macro tileRadius (tileDiameter / 2)
#macro tileEdgeWidth 50 

// Dialog Colors
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

// Invasion Movement Range (amount of tiles the unit can move during invasion rounds to seek out targets)
#macro INVASION_MOVEMENT_0 0
#macro INVASION_MOVEMENT_1 1
#macro INVASION_MOVEMENT_2 2

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
