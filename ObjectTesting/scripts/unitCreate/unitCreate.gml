// @func: unitCreate
// @description: This is called during the create event of units, and initializes the common variables for each alien
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/21/19 - Removed negation of animation

// Arguments:
// argument0 = boolean for if it's a friendly unit (true), or an enemy unit (false)
// argument1 = health
// argument2 = passivity (true if it's a non-attacking unit, and false if its an attacking unit)

isFriendly = argument0 // is this a player unit or an alien
currentHealth = argument1 // health of the unit
passiveUnit = argument2 // is the unit an attacking unit or a non-attacking unit?

isAttacking = false // keeps track of if the entity is currently attacking something
canAttack = true // keeps track of if the unit is on attack cooldown
currentTarget = noone // storing the unit's current target
targetAngle = 0 // the angle that the unit is looking

// set variables according to if it's a friendly unit or an enemy unit
if ( isFriendly ) {
	healthColor = c_blue // the color that the unit's health will be displayed as
} 
else {
	healthColor = c_red // the color that the unit's health will be displayed as
}