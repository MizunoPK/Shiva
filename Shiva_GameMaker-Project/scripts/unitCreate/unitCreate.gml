/// @func unitCreate(name, isFriendly, maxHealth, passiveUnit, moveable )
/// @description This is called during the create event of units, and initializes the common variables for each alien
// @Author: Kai Mizuno

// Arguments:
/// @param name the name of the unit
/// @param isFriendly boolean for if it's a friendly unit (true), or an enemy unit (false)
/// @param maxHealth maximum health of the unit
/// @param passiveUnit passivity (true if it's a non-attacking unit, and false if its an attacking unit)
/// @param moveable is the unit able to move? true/false

name = argument0 // the name of the unit
isFriendly = argument1 // is this a player unit or an alien
maxHealth = argument2 // health of the unit
currentHealth = maxHealth
passiveUnit = argument3 // is the unit an attacking unit or a non-attacking unit?
moveable = argument4 // is the unit able to move?

isAttacking = false // keeps track of if the entity is currently attacking something
canAttack = true // keeps track of if the unit is on attack cooldown
currentTarget = noone // storing the unit's current target

status = "Inactive" // the status of the unit shown in the unit's info dialog

isMoving = false // is the unit currently moving?
idleSpeed = image_speed // store the speed that the unit animates at when idled
isSlowed = false // is the unit currently being slowed down by something?
movementMultiplier = 3 // how much you multiply the idle speed by when moving

// set variables according to if it's a friendly unit or an enemy unit
if ( isFriendly ) {
	dialogColor = FRIENDLY_DIALOG_COLOR // the color that the unit's health will be displayed as
} 
else {
	dialogColor = ENEMY_DIALOG_COLOR // the color that the unit's health will be displayed as
}