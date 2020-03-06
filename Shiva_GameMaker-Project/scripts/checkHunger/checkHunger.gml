/// @func checkHunger
/// @description Check the unit's hunger level, and kill the unit if it's too high

maxHunger = 100

if (hunger >= maxHunger) {
	instance_destroy(self)
}