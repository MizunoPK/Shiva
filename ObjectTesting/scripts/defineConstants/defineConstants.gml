// @func: changeWeapon
// @description: This is called at the start of the game and establishes all the constants we want to define
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

// Global Variables
global.currentSelectedObject = noone // the currently selected object by the user
global.groundTroops = ds_list_create() // a list of the ground troops
	ds_list_add( global.groundTroops, o_Soldier, o_Alien_Rudra )

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
