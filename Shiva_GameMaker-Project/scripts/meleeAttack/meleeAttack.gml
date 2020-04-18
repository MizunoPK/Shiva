/// @func: meleeAttack()
/// @description: This is called when a unit is attacking something
// @Author: Kai Mizuno

if ( isAttacking and canAttack ) { 
	audio_play_sound(snd_Hit, 1, false)
	with ( enemyInstance ) {
		currentHealth -= other.damage
	}
	canAttack = false
	alarm[0] = room_speed * secondsBetweenHits
}