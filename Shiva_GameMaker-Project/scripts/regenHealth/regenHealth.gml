/// @func regenHealth()
/// @description regen health between rounds

currentHealth += 20
if ( currentHealth > maxHealth) {
	currentHealth = maxHealth
}