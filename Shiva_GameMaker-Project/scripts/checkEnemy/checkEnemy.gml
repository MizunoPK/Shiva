/// @func: checkEnemy()
/// @description: This is called during a unit's step function to check on their target
// @Author: Kai Mizuno

// if the target was destroyed, make sure the unit doesn't continue to try to attack
if ( enemyInstance != noone and not instance_exists(enemyInstance) ) {
	if ( isAttacking )
		changeAttackMode()
	enemyInstance = noone
	
	if (object_index == o_Soldier and global.invasionRound) {
		movementRange = invasionRoundMovementRange
	}
}