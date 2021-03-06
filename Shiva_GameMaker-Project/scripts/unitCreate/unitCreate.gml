/// @func unitCreate(name, isFriendly, maxHealth, passiveUnit, movementSpeed, sightRange, attackRange )
/// @description This is called during the create event of units, and initializes the common variables for each alien
// @Author: Kai Mizuno

// Arguments:
/// @param name the name of the unit
/// @param isFriendly boolean for if it's a friendly unit (true), or an enemy unit (false)
/// @param maxHealth maximum health of the unit
/// @param passiveUnit passivity (true if it's a non-attacking unit, and false if its an attacking unit)
/// @param movementSpeed how fast the unit moves (based on macros)
/// @param sightRange how far away the unit can spot an enemy
/// @param attackRange how many tiles away from the enemy the unit needs to be within in order to attack

name = argument0 // the name of the unit
isFriendly = argument1 // is this a player unit or an alien
maxHealth = argument2 // health of the unit
currentHealth = maxHealth
passiveUnit = argument3 // is the unit an attacking unit or a non-attacking unit?
movementSpeed = argument4 // how fast the unit moves (used to start paths in checkMovement)
sightRange = argument5 // how many tiles away the unit can see enemies
attackRange = argument6 // how many tiles away from the enemy the unit needs to be within in order to attack
level = 1

isAttacking = false // keeps track of if the entity is currently attacking something
canAttack = true // keeps track of if the unit is on attack cooldown
currentTarget = noone // storing the unit's current target
tileMovingTo = noone // the tile the unit is moving towards
enemyInstance = noone // store the instance of the enemy currently attacking
attackable = true // all units being passed this function can be attacked
attackPriority = ATTACK_PRIORITY_HIGH // other units seek out this unit to attack

status = "Inactive" // the status of the unit shown in the unit's info dialog

isMoving = false // is the unit currently moving?
idleSpeed = image_speed // store the speed that the unit animates at when idled
isSlowed = false // is the unit currently being slowed down by something?
movementMultiplier = 3 // how much you multiply the idle speed by when moving

previousTile = noone
mountable = false
canMount = false

// set variables according to if it's a friendly unit or an enemy unit
if ( isFriendly ) {
	dialogColor = FRIENDLY_DIALOG_COLOR // the color that the unit's health will be displayed as
} 
else {
	dialogColor = ENEMY_DIALOG_COLOR // the color that the unit's health will be displayed as
}