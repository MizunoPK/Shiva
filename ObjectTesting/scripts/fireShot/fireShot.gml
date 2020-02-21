// @func: fireShot
// @description: This is called when a ranged units fires a shot
// @Author: Kai Mizuno
// Date Created: 2/19/19
// Last Updated: 2/19/19


if ( not passiveUnit and isAttacking and canAttack ) { 
	
	// calculate the x and y of the new shot
	xShot = x + sprite_height * cos( degtorad(targetAngle) )
	yShot = y - sprite_height * sin( degtorad(targetAngle) )
	
	// Create the new shot, and update its variables
	shot = instance_create_layer(xShot, yShot, "Instances", o_Shot_Standard)
	with (shot) {
		image_angle = other.targetAngle
		// calculate the x and y velocity of the shot
		xShotVelocity = cos( degtorad(other.targetAngle) ) * other.velocityMultiplier
		yShotVelocity =  - sin( degtorad(other.targetAngle) ) * other.velocityMultiplier
		damage = other.damage
	}
	
	
	canAttack = false
	alarm[0] = room_speed * secondsBetweenHits
}