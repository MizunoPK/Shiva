/// @func levelUp()
/// @description attempt to level up the unit

with (currentTarget) {
	audio_play_sound(snd_Select, 1, false)

if ( not global.invasionRound and global.researchPoints >= 20 ) { 

	global.researchPoints -= 20
	level++
	maxHealth += 20
	currentHealth += 20
	
	sightRange++
	if ( movementSpeed > MOVEMENT_VELOCITY_0 ) {
		maxMovement++
		movementRange++
	}
	
	audio_play_sound(snd_LevelUp, 2, false)
}

}