/// @func: unitCreate(name, isFriendly, maxHealth, passiveUnit)
/// @description: This is called during the create event of units, and initializes the common variables for each alien
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/21/19 - Removed negation of animation

// Arguments:
/// @param argument0 name the name of the unit
/// @param argument1 isFriendly boolean for if it's a friendly unit (true), or an enemy unit (false)
/// @param argument2 maxHealth maximum health of the unit
/// @param argument3 passiveUnit passivity (true if it's a non-attacking unit, and false if its an attacking unit)

name = argument0 // the name of the unit
isFriendly = argument1 // is this a player unit or an alien
maxHealth = argument2 // health of the unit
currentHealth = maxHealth
passiveUnit = argument3 // is the unit an attacking unit or a non-attacking unit?

isAttacking = false // keeps track of if the entity is currently attacking something
canAttack = true // keeps track of if the unit is on attack cooldown
currentTarget = noone // storing the unit's current target
targetAngle = 0 // the angle that the unit is looking

status = "Inactive" // the status of the unit shown in the unit's info dialog

isMoving = false // is the unit currently moving?
idleSpeed = image_speed // store the speed that the unit animates at when idled
isSlowed = false // is the unit currently being slowed down by something?
movementMultiplier = 4 // how much you multiply the idle speed by when moving

// set variables according to if it's a friendly unit or an enemy unit
if ( isFriendly ) {
	dialogColor = FRIENDLY_DIALOG_COLOR // the color that the unit's health will be displayed as
} 
else {
	dialogColor = ENEMY_DIALOG_COLOR // the color that the unit's health will be displayed as
}