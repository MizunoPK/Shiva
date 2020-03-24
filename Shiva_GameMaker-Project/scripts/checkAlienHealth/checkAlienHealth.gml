/// @func checkAlienHealth()
/// @description check an alien's health and respond accordingly if it's been killed

if ( currentHealth <= 0 ) {
	tileLocation.occupier = noone
	if (currentTarget != noone)
		currentTarget.occupier = noone
	global.enemiesOnBoard = global.enemiesOnBoard - 1
	instance_destroy(self)
} 