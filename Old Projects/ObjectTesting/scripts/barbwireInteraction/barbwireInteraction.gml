/// @func: barbwireInteraction()
/// @description: This is called whenever a unit runs into a barbwire
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

slowdownMultiplier = 0.25 // multiply the unit's velocity by this amount

barbwireCheck = collision_circle(x,y,sprite_width / 2, o_Trap_Barbwire, false, true)
// if we've found a barbwire, slow down
if (barbwireCheck != noone ) {
	isSlowed = true
	vectorVelocty = maxVelocty * other.slowdownMultiplier
}
// otherwise, be at max speed
else {
	vectorVelocty = maxVelocty
	isSlowed = false
}