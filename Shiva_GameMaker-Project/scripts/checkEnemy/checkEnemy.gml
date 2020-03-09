/// @func: checkEnemy()
/// @description: This is called during a unit's step function to check on their target
// @Author: Kai Mizuno

// if the target was destroyed, make sure the unit doesn't continue to try to attack
if ( !instance_exists(enemyInstance) ) {
	if ( isAttacking )
		changeAttackMode()
	enemyInstance = noone
}