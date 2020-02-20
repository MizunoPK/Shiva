// @func: unitCreate
// @description: This is called during the create event of units, and initializes the common variables for each alien
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/19/19

// Arguments:
// argument0 = boolean for if it's a friendly unit (true), or an enemy unit (false)
// argument1 = health
// argument2 = base damage
// argument3 = the amount of time between damage hits in seconds
// argument4 = velocity multiplier of shots

isFriendly = argument0 // is this a player unit or an alien
currentHealth = argument1 // health of the unit
damage = argument2 // the amount of damage this unit deals

isAttacking = false // keeps track of if the entity is currently attacking something
canAttack = true // keeps track of if the unit is on attack cooldown
currentTarget = noone // storing the unit's current target
targetAngle = 0 // the angle that the unit is looking
secondsBetweenHits = argument3 // seconds between each hit
velocityMultiplier = argument4 // multiplier affecting the speed of the shots fired by the unit iff applicable

image_speed = 0 // prevent any animation to start
image_index = 0 // keep the image on the first frame for now


// set variables according to if it's a friendly unit or an enemy unit
if ( isFriendly ) {
	healthColor = c_blue // the color that the unit's health will be displayed as
} 
else {
	healthColor = c_red // the color that the unit's health will be displayed as
}