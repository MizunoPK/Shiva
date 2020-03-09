/// @func: meleeAttack()
/// @description: This is called when a unit is attacking something
// @Author: Kai Mizuno

if ( isAttacking and canAttack ) { 
	with ( enemyInstance ) {
		currentHealth -= other.damage
	}
	canAttack = false
	alarm[0] = room_speed * secondsBetweenHits
}