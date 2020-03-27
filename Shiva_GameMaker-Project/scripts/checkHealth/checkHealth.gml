/// @func: checkHealth()
/// @description: This is called during the step event and when the unit is out of health it will be destroyed
// @Author: Kai Mizuno

if ( currentHealth <= 0 ) {
	with (tileLocation) {
		occupier = noone
	}
	if (currentTarget != noone)
		currentTarget.occupier = noone
		
	if (object_index == o_Soldier) {
		ds_list_delete(global.listOfSoldiers, ds_list_find_index(global.listOfSoldiers, self))
	}
	if ( object_get_parent(object_index) == o_Human ) {
		ds_list_delete(global.listOfHumans, ds_list_find_index(global.listOfHumans, self))
	}
	
	instance_destroy(self)
} 