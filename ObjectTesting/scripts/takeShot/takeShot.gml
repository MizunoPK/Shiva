// @func: takeShot
// @description: This is called when a unit takes a hit from a projectile
// @Author: Kai Mizuno
// Date Created: 2/21/19
// Last Updated: 2/21/19

if ( not other.isExploding ) {
	// Lose health
	currentHealth -= other.damage

	// Switch to the explosion sprite
	with (other) {
		sprite_index = explosionSprite
		isExploding = true
		xShotVelocity = 0
		yShotVelocity = 0
	}
}