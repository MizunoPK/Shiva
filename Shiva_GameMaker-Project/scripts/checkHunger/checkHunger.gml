/// @func checkHunger
/// @description Check the unit's hunger level, and kill the unit if it's too high

maxHunger = 100

if (hunger >= maxHunger) {
	ds_list_delete(global.listOfSoldiers, ds_list_find_index(global.listOfSoldiers, self))
	ds_list_delete(global.listOfHumans, ds_list_find_index(global.listOfHumans, self))
	instance_destroy(self)
}