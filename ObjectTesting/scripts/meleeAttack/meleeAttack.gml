// @func: meleeAttack
// @description: This is called when a unit is attacking something
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/19/19

if ( isAttacking and canAttack ) { 
	with ( currentTarget ) {
		currentHealth -= other.damage
	}
	canAttack = false
	alarm[0] = room_speed * secondsBetweenHits
}