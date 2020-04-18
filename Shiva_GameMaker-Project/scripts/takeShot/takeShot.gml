/// @func: takeShot()
/// @description: This is called when a unit takes a hit from a projectile
// @Author: Kai Mizuno

if ( not other.isExploding ) {
	// Lose health
	currentHealth -= other.damage

	// Switch to the explosion sprite
	with (other) {
		
		startExplosion()
	}
}