// @func: unitMove
// @description: This is called during a unit's step event and tries to move the unit towards its target
// @Author: Kai Mizuno
// Date Created: 2/23/19
// Last Updated: 2/23/19

if (isMoving) {
	// set the image speed to be 2 * the idle speed
	image_speed = movementMultiplier * idleSpeed
	if (isSlowed)
		image_speed = image_speed / 2
	
	// calculate the velocity vectors of the components
	velocityX = vectorVelocty * cos(degtorad(targetAngle))
	velocityY = vectorVelocty * sin(degtorad(targetAngle))
	
	// move the unit
	x += velocityX
	y -= velocityY
	
}