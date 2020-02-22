// @func: checkTarget
// @description: This is called during a unit's step function to check on their target
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

// if the target was destroyed, make sure the unit doesn't continue to try to attack
if ( !instance_exists(currentTarget) ) {
	isAttacking = false
	currentTarget = noone
}