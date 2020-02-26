/// @func: checkHealth()
/// @description: This is called during the step event and when the unit is out of health it will be destroyed
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/19/19

if ( currentHealth <= 0 ) {
	instance_destroy(self)
} 