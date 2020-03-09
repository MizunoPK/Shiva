/// @func: shotStep()
/// @description: This is called during the step event of each shot, updating velocity and checking if it's exploding
// @Author: Kai Mizuno


x += xShotVelocity
y += yShotVelocity

if ( isExploding and image_index > image_number - 1 ) {
	instance_destroy(self)
}