/// @func updateDirection()
/// @description This is called to check when the sprite changes it's direction
// @Author: Kai Mizuno

// East
if (direction >= 337.5 or direction <= 22.5 ) {
	sprite_index = eastSprite
	image_xscale = 1
}
// North East
else if ( direction >= 22.5 and direction <= 67.5 ) {
	sprite_index = northeastSprite
	image_xscale = 1
}
// North
else if ( direction >= 67.5 and direction <= 112.5 ) {
	sprite_index = northSprite
	image_xscale = 1
}
// North west
else if ( direction >= 112.5 and direction <= 157.5 ) {
	sprite_index = northwestSprite
	image_xscale = 1
}
// West
else if (direction >= 157.5 and direction <= 202.5 ) {
	sprite_index = westSprite
	image_xscale = 1
}
// South west
else if ( direction >= 202.5 and direction <= 247.5 ) {
	sprite_index = southwestSprite
	image_xscale = 1
}
// South
else if ( direction >= 247.5 and direction <= 292.5 ) {
	sprite_index = southSprite
	image_xscale = 1
}
// South east
else if (direction >= 292.5 and direction <= 337.5 ) {
	sprite_index = southeastSprite
	image_xscale = 1
}