/// @func: updateDirection(targetAngle)
/// @description: This is called when a unit changes the direction of their movement
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

// Parameters:
/// @param targetAngle angle of movement based off macro

targetAngle = argument0 // angle of movement

if (targetAngle == DIRECTION_EAST) {
	sprite_index = eastSprite
	image_xscale = 1
}
else if ( targetAngle == DIRECTION_NORTH_EAST ) {
	sprite_index = northeastSprite
	image_xscale = 1
}
else if (targetAngle == DIRECTION_NORTH ) {
	sprite_index = northSprite
	image_xscale = 1
}
else if (targetAngle == DIRECTION_NORTH_WEST ) {
	sprite_index = northeastSprite
	image_xscale = -1
}
else if (targetAngle == DIRECTION_WEST ) {
	sprite_index = eastSprite
	image_xscale = -1
}
else if (targetAngle == DIRECTION_SOUTH_WEST ) {
	sprite_index = southeastSprite
	image_xscale = -1
}
else if (targetAngle == DIRECTION_SOUTH ) {
	sprite_index = southSprite
	image_xscale = 1
}
else if (targetAngle == DIRECTION_SOUTH_EAST ) {
	sprite_index = southeastSprite
	image_xscale = 1
}