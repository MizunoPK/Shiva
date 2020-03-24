/// @func: checkHealth()
/// @description: This is called during the step event and when the unit is out of health it will be destroyed
// @Author: Kai Mizuno

if ( currentHealth <= 0 ) {
	with (tileLocation) {
		occupier = noone
	}
	if (currentTarget != noone)
		currentTarget.occupier = noone
	
	instance_destroy(self)
} 