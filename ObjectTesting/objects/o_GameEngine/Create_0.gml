/// @description Empty game object that is the only thing placed in the room, and creates all the required objects

// Constants
defineConstants()


// Testing soldier shooting an alien
// Create a soldier
soldierTesting_soldier = instance_create_layer( room_width/5, room_height/5, "Instances", o_Soldier)
// Create an alien
soldierTesting_alien = instance_create_layer( room_width/5 + 64 * 2, room_height/5, "Instances", o_Alien_Rudra)
with (soldierTesting_soldier) {
	currentTarget = other.soldierTesting_alien
}
// Create an attack button
soldierTesting_attackButton = instance_create_layer( room_width/5 + 32, room_height/5 + 48, "Instances", o_AttackButton)
with (soldierTesting_attackButton) {
	currentTarget = other.soldierTesting_soldier
}
// create a change button
soldierTesting_changeButton = instance_create_layer( room_width/5 - 32, room_height/5 + 48, "Instances", o_Change)
with (soldierTesting_changeButton) {
	currentTarget = other.soldierTesting_soldier
}


// Testing Turrets
// Create a turret
turretTesting_turret = instance_create_layer( room_width/5, 2 * room_height/5, "Instances", o_ManualTurret)
// Create an alien
turretTesting_alien = instance_create_layer( room_width/5 + 64 * 2, 2 * room_height/5, "Instances", o_Alien_Rudra)
with (turretTesting_turret) {
	currentTarget = other.turretTesting_alien
}
// Create a soldier
instance_create_layer( room_width/5 - 48, 2 * room_height/5, "Instances", o_Soldier)
// Create an attack button
turretTesting_attackButton = instance_create_layer( room_width/5 + 32, 2 * room_height/5 + 72, "Instances", o_AttackButton)
with (turretTesting_attackButton) {
	currentTarget = other.turretTesting_turret
}
turretTesting_changeButton = instance_create_layer( room_width/5 - 32, 2 * room_height/5 + 72, "Instances", o_ChangeTurret)
with (turretTesting_changeButton) {
	currentTarget = other.turretTesting_turret
}

// Testing Laser Turret
// Create a soldier
laserTesting_laser = instance_create_layer( room_width/5, 3 * room_height/5, "Instances", o_AutomaticTurret)
// Create an alien
laserTesting_alien = instance_create_layer( room_width/5 + 64 * 2, 3 * room_height/5, "Instances", o_Alien_Rudra)
with (laserTesting_laser) {
	currentTarget = other.laserTesting_alien
}
// Create an attack button
laserTesting_attackButton = instance_create_layer( room_width/5 , 3 * room_height/5 + 48, "Instances", o_AttackButton)
with (laserTesting_attackButton) {
	currentTarget = other.laserTesting_laser
}


// Testing melee aliens
// Create a soldier
meleeAlienTesting_soldier = instance_create_layer( 3 * room_width/5, room_height/5, "Instances", o_Soldier)
// Create an alien
meleeAlienTesting_alien = instance_create_layer( 3 * room_width/5 + 48, room_height/5, "Instances", o_Alien_Rudra)
with (meleeAlienTesting_alien) {
	currentTarget = other.meleeAlienTesting_soldier
}
// Create an attack button
meleeAlienTesting_attackButton = instance_create_layer( 3 * room_width/5 + 100, room_height/5 + 48, "Instances", o_AttackButton)
with (meleeAlienTesting_attackButton) {
	currentTarget = other.meleeAlienTesting_alien
}
// create a change button
//meleeAlienTesting_changeButton = instance_create_layer( 3 * room_width/5 + 48, room_height/5 + 48, "Instances", o_Change)
//with (meleeAlienTesting_changeButton) {
//	currentTarget = other.meleeAlienTesting_alien
//}


// Testing barbwire
// Create a soldier
barbwireTesting_barbwire = instance_create_layer( 3 * room_width/5, 2 * room_height/5, "Instances", o_Trap_Barbwire)
// Create an alien
barbwireTesting_alien = instance_create_layer( 3 * room_width/5 + 128, 2 * room_height/5, "Instances", o_Alien_Rudra)
with (barbwireTesting_alien) {
	currentTarget = other.turretTesting_turret
	isMoving = true
	targetAngle = 180
}